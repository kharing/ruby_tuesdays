require "sinatra"

get "/" do
  name = params["name"]

  """
  <html>
    <head>
      <title>Our Page</title>
    </head>
    <body>
      <h1>Our Page!</h1>
      <form method='POST'>
        <input type='text' name='my_input' value='#{name}' />
        <button type='submit'>Submit!</button>
      </form>
    </body>
  </html>
  """
end

post "/" do
  string = params["my_input"]

  "Yay, #{string} submitted!"
end

get "/groups/:group_name" do |group_name|
  "Hello #{group_name}!"
end

get "/groups/:group_name/members/:member" do |group_name, member|
  "Hello #{member} from #{group_name}!"
end
