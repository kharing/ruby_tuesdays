require "sinatra"
require "sinatra/reloader"

dictionary = {
  'milk'   => 'Milch',
  'coffee' => 'Kaffee',
  'sugar'  => 'Zucker'
}

get "/" do
  @dictionary = dictionary
  erb :index, layout: :main_layout
end

get "/search" do
  erb :search_form, layout: :main_layout
end

post "/search" do
  word = params["word"]
  translation = dictionary[word]

  if translation
    @message = "The translation of <strong>#{word}</strong> is <strong>#{translation}</strong>"
  else
    @message = "No translation for <strong>#{word}</strong>"
  end

  erb :search_result, layout: :main_layout
end
