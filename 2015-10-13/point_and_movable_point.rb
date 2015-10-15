class Point

  def initialize(x, y)
    @x = x
    @y = y
  end

  def inspect
    puts "Point at position x=#{@x} and y=#{@y}"
  end

end

class MovablePoint < Point

  def move_up(value)
    puts "Moving up by #{value}.."
    @y += value
  end

  def move_down(value)
    puts "Moving down by #{value}.."
    @y -= value
  end

  def move_right(value)
    puts "Moving right by #{value}.."
    @x += value
  end

  def move_left(value)
    puts "Moving left by #{value}.."
    @x -= value
  end

end

p = Point.new(3, 5)
p.inspect

mp = MovablePoint.new(3, 5)
mp.inspect
mp.move_up(2)
mp.move_down(3)
mp.move_right(2)
mp.move_left(3)
mp.inspect
