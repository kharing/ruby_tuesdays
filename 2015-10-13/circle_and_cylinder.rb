class Shape

  def initialize(color)
    @color = color
  end

  def inspect
    puts "#{klass_name} of color=#{@color}"
  end

  def klass_name
    self.class.name
  end

end

class Circle < Shape

  def initialize(color, radius)
    super(color)
    @radius = radius
  end

  def inspect
    super
    puts "#{klass_name} of radius=#{@radius}"
  end

  def area
    Math::PI * @radius**2
  end

  def print_area
    puts "The #{klass_name.downcase} has a area of #{area.round(2)} qcm"
  end

end

class Cylinder < Circle

  def initialize(color, radius, height)
    super(color, radius)
    @height = height
  end

  def inspect
    super
    puts "Cylinder of height=#{@height}"
  end

  def area
    2 * (super + Math::PI * @radius * @height)
  end

  def volume
    Math::PI * @radius**2 * @height
  end

  def print_volume
    puts "The #{klass_name.downcase} has a volume of #{volume.round(2)} cubic cm"
  end

end

circle = Circle.new("red", 2)
circle.inspect
circle.print_area

cylinder = Cylinder.new("pink", 2, 4)
cylinder.inspect
cylinder.print_area
cylinder.print_volume
