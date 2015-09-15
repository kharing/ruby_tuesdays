dictionary = {
  'milk'   => 'Milch',
  'coffee' => 'Kaffee',
  'sugar'  => 'Zucker'
}

correct_answers = 0

dictionary.each do |word, translation|

  puts "Please enter the German translation for #{word}:"

  tries = 0
  answer_is_correct = false

  while tries < 3 && !answer_is_correct

    entered = gets.strip
    tries = tries + 1

    if entered == translation
      puts "Your answer is correct."
      answer_is_correct = true
      correct_answers = correct_answers + 1
    else
      puts "Your answer is not correct."
      if tries < 3
        puts "Please try again:"
      else
        puts "The German translation for #{word} is #{translation}."
      end
    end
  end

end

puts "You answered #{correct_answers} of #{dictionary.size} questions correctly."



