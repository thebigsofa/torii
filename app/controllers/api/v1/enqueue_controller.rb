module Api
  module V1
    class EnqueueController < ApplicationController
      def enqueue
        conn = Bunny.new(host: "torii-rabbitmq", user: "user", password: "pass")
        conn.start

        channel = conn.create_channel
        exchange = channel.topic(topic)

        exchange.publish(
          payload.to_json,
          routing_key: routing_key,
          content_type: "application/json"
        )

        conn.close

        render json: { status: 200, message: "ok" }
      end

      private

      def payload
        @payload ||= params["payload"]
      end

      def routing_key
        @routing_key ||= params["routing_key"]
      end

      def topic
        @topic ||= params["topic"]
      end
    end
  end
end
