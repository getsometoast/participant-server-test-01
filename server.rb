require 'sinatra'
require 'mongo'

get "/health" do
	client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'cats')
	db = client.database

  "healthy"
end
