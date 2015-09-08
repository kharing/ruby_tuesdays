puts "Instructions:"
puts "Guess the number between 1 and 10"

# this should actually be a random number
number = 5

# this should actually be the number from the user input
guess = 5

if guess == number
  puts "You are great"
elsif guess < number 
  puts "Your number is too low"
elsif guess > number
  puts "Your number is too high"
end
