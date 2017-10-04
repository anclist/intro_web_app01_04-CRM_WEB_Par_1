require_relative 'contact'
require 'sinatra'

get '/' do
  erb :index
end

get '/contacts' do
#In this new route, create an instance variable containing a collection
#of all the contacts in your database
  # @contacts = []
  @contacts = Contact.all
  erb :contacts
end

after do
  ActiveRecord::Base.connection.close
end
