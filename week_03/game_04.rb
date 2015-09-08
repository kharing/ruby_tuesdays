puts "Instructions:"
puts "Guess the number between 1 and 10"

number = 1 + rand(10)

# this should actually be the number from the user input
guess = gets.to

if guess == number
  puts "You are great"
elsif guess < number 
  puts "Your number is too low"
elsif guess > number
  puts "Your number is too high"
end

