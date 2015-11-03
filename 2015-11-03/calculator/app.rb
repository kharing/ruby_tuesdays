require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index, layout: :main_layout
end

post "/" do
  @the_number = params["the_number"].to_i
  @root = Math.sqrt(@the_number)

  erb :result, layout: :main_layout
end
