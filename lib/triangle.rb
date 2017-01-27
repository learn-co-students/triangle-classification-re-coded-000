class Triangle
  # write code here
  #attr_reader :x, :o, :y
  def initialize(x, o, y)
    @x = x
    @o = o
    @y = y
  end

  def kind
    legal_triangle
    if @x == @o && @o == @y
      :equilateral
    elsif @x == @o || @o == @y || @x == @y
      :isosceles
    else
      :scalene
    end
     end

  def legal_triangle
     if (@x + @o + @y != 0) && (@x + @o > @y) && (@x + @y > @o) && (@o + @y > @x)
  else
    raise TriangleError
  end
   end
    end
  class TriangleError < StandardError
   end 
