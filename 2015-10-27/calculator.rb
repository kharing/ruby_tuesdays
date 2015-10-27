require "sinatra"

get "/" do
  """
    <form method='POST'>
      <p>Insert a number:</p>
      <input type='text' name='the_number'>
      <br>
      <input type='submit' value='Calculate'>
    </form>
  """
end

post "/" do
  the_number = params["the_number"].to_i
  root = Math.sqrt(the_number)

  """
    <p>
      The square root of
      <strong>#{the_number}</strong> is
      <strong>#{root}</strong>
    </p>
    <a href='/'>Go back</a>
  """
end
