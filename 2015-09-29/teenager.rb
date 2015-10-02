class Teenager

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def answer(input)
    if question?(input)
      puts "#{name}: Sure."
    elsif empty?(input)
      puts "#{name}: Fine. Be that way!"
    elsif yelled?(input)
      puts "#{name}: Whoa, chill out!"
    elsif goodbye?(input)
      puts "#{name}: Bye."
      exit
    else
      puts "#{name}: Whatever."
    end
  end

  def question?(input)
    input.end_with?("?")
  end

  def empty?(input)
    input.empty?
  end

  def yelled?(input)
    input == input.upcase
  end

  def goodbye?(input)
    input.end_with?("Bye")
  end

end

bob = Teenager.new("Bob")

while true
  print "You: "
  input = gets.strip
  bob.answer(input)
end
