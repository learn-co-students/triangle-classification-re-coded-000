class Triangle
  attr_accessor :s1, :s2, :s3
  def initialize(v1,v2,v3)
    @s1 = v1
    @s2 = v2
    @s3 = v3
  end
  def kind
    if @s1 >0 && @s2 >0 && @s3 > 0 && (@s1 + @s2 > @s3) && (@s1 + @s3 > @s2) && (@s2 + @s3 > @s1)then
      if @s1 == @s2 && @s2 == @s3 then
        return :equilateral
      elsif @s1 == @s2 || @s1 == @s3 || @s2 == @s3 then
        return :isosceles
      else
        return :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end
end
class TriangleError < StandardError
  def message
    "illegal triangle!"
  end
end
