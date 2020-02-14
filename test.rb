require 'bunny'

connection = Bunny.new
connection.start

channel = connection.create_channel
exchange = channel.topic("platform_topic")
queue = channel.queue("platform")

queue.bind(exchange, :routing_key => "platform.cron")

queue.subscribe do |delivery_info, metadata, payload|
  puts "Received #{payload}"
end

sleep 1.0

connection.close
