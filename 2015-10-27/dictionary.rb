require "sinatra"

dictionary = {
  'milk'   => 'Milch',
  'coffee' => 'Kaffee',
  'sugar'  => 'Zucker'
}

get "/" do
  output = ""

  output << "<ul>"

  dictionary.each do |word, translation|
    output << "<li><em>#{word}</em> - <strong>#{translation}</strong></li>"
  end

  output << "</ul>"
  
  output << "<a href='/search'>Lookup a word</a>"
  
  output
end

get "/search" do
  """
    <form method='POST'>
      <p>Lookup a word</p>
      <input type='text' name='word'>
      <br>
      <input type='submit' value='Search'>
    </form>
  """
end

post "/search" do
  word = params["word"]
  translation = dictionary[word]

  if translation
    message = "The translation of <strong>#{word}</strong> is <strong>#{translation}</strong>"
  else
    message = "No translation for <strong>#{word}</strong>"
  end

  """
    <p>
      #{message}
    </p>
    <p>
      <a href='/search'>Search again</a>
    </p>
  """
end