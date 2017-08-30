require 'socket'
require 'mongo'

task default: %w[run]

task :run do
  puts "YOUR IP ADDRESS: " + Socket.ip_address_list.detect{|intf| intf.ipv4_private?}.ip_address
	# seed the database
	client = Mongo::Client.new('mongodb://127.0.0.1:2717/test')
	collection = client[:cats]
	collection.insert_one({ name: "cat name" })
	collection.insert_one({ name: "cat name", image_url: "https://i.pinimg.com/736x/8e/d7/41/8ed7410285f101ba5892ff723c91fa75--life-is-beautiful-beautiful-eyes.jpg" })

  `shotgun --port=6060 server.rb`
end
