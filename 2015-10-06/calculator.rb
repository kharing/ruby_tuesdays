class Calculator

  def initialize(number_1, number_2)
    @number_1 = number_1
    @number_2 = number_2
  end

  def add
    puts @number_1 + @number_2
  end

  def subtract
    puts @number_1 - @number_2
  end

  def multiply
    puts @number_1 * @number_2
  end

  def divide
    puts @number_1 / @number_2
  end

end

calc1 = Calculator.new(8,4)
calc1.add
calc1.subtract

calc2 = Calculator.new(9,3)
calc2.multiply
calc2.divide
