class Person

  attr_accessor :last_name, :first_name

  def initialize(first_name, last_name, age, native_city)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @native_city = native_city
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def greet
    puts "Hello! My name is #{full_name}, I am #{@age} years old and I was born in #{@native_city}."
  end

end

angela = Person.new("Angela", "Merkel", 61, "Hamburg")
angela.greet
