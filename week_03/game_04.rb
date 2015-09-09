puts "Instructions:"
puts "Guess the number between 1 and 10"

number = 1 + rand(10)

guess = gets.to_i

if guess == number
  puts "You are great"
elsif guess < number 
  puts "Your number is too low"
elsif guess > number
  puts "Your number is too high"
end

