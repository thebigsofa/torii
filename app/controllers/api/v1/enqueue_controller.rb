module Api
  module V1
    class EnqueueController < ApplicationController
      def enqueue
     #  conn = Bunny.new(host: "torii-rabbitmq", user: "user", password: "pass")
        conn = Bunny.new(host: ENV["QUEUE_HOST"], user: ENV["QUEUE_USER"], password: ENV["QUEUE_PASS"], automatically_recover: false )
        conn.start

        channel = conn.create_channel
        queue = channel.queue(queue_name, durable: true)

        queue.publish(
          payload.to_json,
          content_type: "application/json"
        )

        conn.close
        render json: { status: 200, message: "ok" }
      end

      private

      def payload
        @payload ||= params["payload"]
      end

      def queue_name
        @queue_name  ||= params["queue"]
      end
    end
  end
end
