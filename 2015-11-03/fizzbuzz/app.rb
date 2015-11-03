require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index, layout: :main_layout
end

post "/" do
  number = params["my_number"].to_i

  if number % 3 == 0 && number % 5 == 0
    @message = "FizzBuzz"
  elsif number % 3 == 0
    @message = "Fizz"
  elsif number % 5 == 0
    @message = "Buzz"
  else
    @message = number
  end

  erb :result, layout: :main_layout
end
