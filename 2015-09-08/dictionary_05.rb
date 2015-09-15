dictionary = {
  'milk'   => 'Milch',
  'coffee' => 'Kaffee',
  'sugar'  => 'Zucker'
}

correct_answers = 0

dictionary.each do |word, translation|

  puts "Please enter the German translation for #{word}:"

  tries = 0

  while tries < 3

    entered = gets.strip
    if entered == 'skip'
      break
    end
    tries = tries + 1

    if entered == translation
      puts "Your answer is correct."
      correct_answers = correct_answers + 1
      break
    else
      puts "Your answer is not correct."
      if tries < 3
        puts "Please try again or skip by typing 'skip':"
      else
        puts "The German translation for #{word} is #{translation}."
      end
    end
  end

end

puts "You answered #{correct_answers} of #{dictionary.size} questions correctly."



