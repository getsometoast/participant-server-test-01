require 'sinatra'
require 'mongo'

get "/health" do
	client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'cats')
	db = client.database

  "healthy"
end

get "/cats" do
	client = Mongo::Client.new('mongodb://127.0.0.1:27017/test')
	collection = client[:cats]
	@model = collection.find({name: 'cat name'}).skip(1).first
	erb :cats
end
