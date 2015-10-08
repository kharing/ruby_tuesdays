class Person

  attr_accessor :last_name, :first_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

end

person = Person.new("Angela", "Merkel")
person.last_name = "Davis"
puts person.first_name
puts person.last_name
puts person.full_name
