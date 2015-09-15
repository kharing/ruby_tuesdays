# The program gives feedback about the number of correct items.

dictionary = {
  'milk'   => 'Milch',
  'coffee' => 'Kaffee',
  'sugar'  => 'Zucker'
}

correct_answers = 0

dictionary.each do |word, translation|

  puts "Please enter the German translation for #{word}:"

  entered = gets.strip

  if entered == translation
    puts "Your answer is correct."
    correct_answers = correct_answers + 1
  else
    puts "Your answer is not correct. The German translation for #{word} is #{translation}."
  end
end

puts "You answered #{correct_answers} of #{dictionary.size} questions correctly."



