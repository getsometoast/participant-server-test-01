require 'socket'

task default: %w[run]

task :run do
  puts "YOUR IP ADDRESS: " + Socket.ip_address_list.detect{|intf| intf.ipv4_private?}.ip_address
  `shotgun --port=6060 server.rb`
end
