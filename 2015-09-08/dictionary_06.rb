dictionary = {
  'milk'   => 'Milch',
  'coffee' => 'Kaffee',
  'sugar'  => 'Zucker'
}

while true
  puts "Type 'add' if you want to add words to your dictionary."
  puts "Type 'review' if you want to review words of your dictionary."
  puts "Type 'quit' if you want to quit the programm."
  printf "> "
  mode = gets.strip

  if mode == 'review'

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

  elsif mode == 'add'

    while true
      puts "Please enter your new English word:"
      new_word = gets.strip
      puts "Please enter the German translation for #{new_word}:"
      translation = gets.strip
      dictionary[new_word] = translation

      puts "Type 'finish' if you added all of your new words or 'continue' to add more words:"
      entered = gets.strip
      if entered == "finish"
        break
      elsif entered == "continue"
        next
      else
        puts "The command you entered is not known."
      end
    end

  elsif mode == 'quit'
    exit
  else
    puts "The command you entered is not known."
  end
end


