require "sinatra"
require "sinatra/reloader" if development?
require_relative "database"


get "/" do
  erb :index
end

get "/:post" do
  @database=DB[params['post'].to_i]
  @comments=COMMENTS[params['post'].to_i]
  erb :article
end

