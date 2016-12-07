class Triangle
  # write code here
  attr_reader :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  def kind
legal_triangle
   if @x == @y && @y == @z
     :equilateral
   elsif @x == @y || @y == @z || @x == @z
     :isosceles
   else
     :scalene
   end
 end
 def legal_triangle
   if(@x + @y + @z != 0) && (@x + @y > @z) && (@x + @z > @y) && (@y + @z > @x)
   else
      raise TriangleError
end
end
end
class TriangleError < StandardError
  def message
    "not real triangle!"
  end
end
