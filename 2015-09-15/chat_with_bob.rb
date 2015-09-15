while true
  print "You: "
  entered = gets.strip

  if entered.end_with?("?")
    puts "Bob: Sure."
  elsif entered.empty?
    puts "Bob: Fine. Be that way!"
  elsif entered == entered.upcase
    puts "Bob: Whoa, chill out!"
  elsif entered.end_with?("Bye")
    puts "Bob: Bye."
    exit
  else
    puts "Bob: Whatever."
  end
end
