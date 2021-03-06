require "sinatra"
require "sinatra/reloader"

get '/' do
  erb :index, layout: :main_layout
end

post '/pairs' do
  participants = params['participants'].split(/,|\s/)
  participants.shuffle!

  @pairs = participants.each_slice(2).to_a

  erb :pairs, layout: :main_layout
end
