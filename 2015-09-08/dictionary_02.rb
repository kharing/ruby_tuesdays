# Extend the program so that it iterates through the whole dictionary.

dictionary = {
  'milk'   => 'Milch',
  'coffee' => 'Kaffee',
  'sugar'  => 'Zucker'
}

dictionary.each do |word, translation|

  puts "Please enter the German translation for #{word}:"

  entered = gets.strip

  if entered == translation
    puts "Your answer is correct."
  else
    puts "Your answer is not correct. The German translation for #{word} is #{translation}."
  end
end



