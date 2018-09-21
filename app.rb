require "sinatra"
require "sinatra/reloader" if development?
require_relative "database"


get "/" do
  erb :index
end

get "/:post" do
  erb :article
end

