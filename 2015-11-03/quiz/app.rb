require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index, layout: :main_layout
end


get "/question1" do
  erb :question1, layout: :main_layout
end

post "/question1" do
  answer = params["answer"]

  if answer == "42"
    redirect("/question2")
  else
    @current_question = "question1"
    erb :wrong_answer, layout: :main_layout
  end
end


get "/question2" do
  erb :question2, layout: :main_layout
end

post "/question2" do
  answer = params["answer"]

  if answer == "Yukihiro Matsumoto"
    redirect("/question3")
  else
    @current_question = "question2"
    erb :wrong_answer, layout: :main_layout
  end
end


get "/question3" do
  erb :question3, layout: :main_layout
end

post "/question3" do
  answer = params["answer"]

  if answer == "Hypertext Markup Language"
    redirect("/finish")
  else
    @current_question = "question3"
    erb :wrong_answer, layout: :main_layout
  end
end


get "/finish" do
  erb :finish, layout: :main_layout
end
