require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

require_relative 'models/restaurant'

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get '/about' do
  erb :about
end

get '/restaurant/new' do
  erb :new
end

post '/restaurant/create' do
  name = params[:name]
  address = params[:address]

  r = Restaurant.new(name: name, address: address, rating: 0)
  r.save

  redirect to('/')

end


get '/restaurant/show/:id' do
  id = params[:id]
  @restaurant = Restaurant.find(id)
  erb :show
end






