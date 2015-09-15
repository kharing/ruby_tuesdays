dictionary = {
  'milk'   => 'Milch',
  'coffee' => 'Kaffee',
  'sugar'  => 'Zucker'
}

word = dictionary.keys.sample
translation = dictionary[word]

puts "Please enter the German translation for #{word}:"

entered = gets.strip

if entered == translation
  puts "Your answer is correct."
else
  puts "Your answer is not correct. The German translation for #{word} is #{translation}."
end
