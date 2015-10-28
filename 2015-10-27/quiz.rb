require "sinatra"

get "/" do
  "<a href='/question1'>Get started</a>"
end

get "/question1" do
  """
    <h1>Question 1</h1>
    <form method='POST'>
      <p>What is the meaning of life?</p>
      <input type='text' name='answer'>
      <br>
      <input type='submit' value='Continue'>
    </form>
  """
end

post "/question1" do
  answer = params["answer"]

  if answer == "42"
    redirect("/question2")
  else
    """
      <p>
        That’s not quite correct.
      </p>
      <a href='/question1'>Try again</a>
    """
  end
end


get "/question2" do
  """
    <h1>Question 2</h1>
    <form method='POST'>
      <p>Who has invented Ruby?</p>
      <input type='text' name='answer'>
      <br>
      <input type='submit' value='Continue'>
    </form>
  """
end

post "/question2" do
  answer = params["answer"]

  if answer == "Yukihiro Matsumoto"
    redirect("/question3")
  else
    """
      <p>
        That’s not quite correct.
      </p>
      <a href='/question2'>Try again</a>
    """
  end
end


get "/question3" do
  """
    <h1>Question 3</h1>
    <form method='POST'>
      <p>What does the term `HTML` stand for?</p>
      <input type='text' name='answer'>
      <br>
      <input type='submit' value='Continue'>
    </form>
  """
end

post "/question3" do
  answer = params["answer"]

  if answer == "Hypertext Markup Language"
    redirect("/finish")
  else
    """
      <p>
        That’s not quite correct.
      </p>
      <a href='/question3'>Try again</a>
    """
  end
end

get "/finish" do
  """
    <h1>Well done!</h1>
    <a href='/'>Back to the homepage</a>
  """
end


