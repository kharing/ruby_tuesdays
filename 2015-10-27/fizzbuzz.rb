require "sinatra"

get "/" do
  """
    <p>Enter a number…</p>
    <form method='POST'>
      <input type='text' name='my_number'>
      <input type='submit' value='Submit'>
    </form>
  """
end

post "/" do
  number = params["my_number"].to_i

  if number % 3 == 0 && number % 5 == 0
    output = "FizzBuzz"
  elsif number % 3 == 0
    output = "Fizz"
  elsif number % 5 == 0
    output = "Buzz"
  else
    output = number
  end

  """
    <p>#{output}</p>
    <a href='/'>Go back</a>
  """
end
