class Shape

  def initialize(color)
    @color = color
  end

  def inspect
    puts "#{self.class.name} of color=#{@color}"
  end

end

class Rectangle < Shape

  def initialize(color, width, height)
    # Calling super without any arguments would make Ruby pass all arguments (color, width, height) to the method
    # initialize of the superclass. The superclass' method takes only one argument, though. This is why we have to call
    # super(color) instead passing only color as an argument.
    super(color)
    @width = width
    @height = height
  end

  def inspect
    super
    puts "Rectangle of width=#{@width} and height=#{@height}"
  end

  def area
    puts "The rectangle has a area of #{@width * @height} qcm"
  end

end

class Triangle < Shape

  def initialize(color, base, height)
    # Calling super without any arguments would make Ruby pass all arguments (color, width, height) to the method
    # initialize of the superclass. The superclass' method takes only one argument, though. This is why we have to call
    # super(color) instead passing only color as an argument.
    super(color)
    @base = base
    @height = height
  end

  def inspect
    super
    puts "Triangle of base=#{@base} and height=#{@height}"
  end

  def area
    puts "The triangle has a area of #{0.5 * @base * @height} qcm"
  end

end

shape = Shape.new("yellow")
shape.inspect

rect = Rectangle.new("green", 3, 5)
rect.inspect
rect.area

triangle = Triangle.new("blue", 2, 4)
triangle.inspect
triangle.area
