require_relative 'contact'
require 'sinatra'

get '/' do
  redirect to('/index')
end
get '/index' do
    erb :index
end

get '/contacts' do
  @title = 'My Contact list'
   @contacts = Contact.all
   erb :contacts
end

get '/about' do
  erb  :about
end


after do
  ActiveRecord::Base.connection.close
end
