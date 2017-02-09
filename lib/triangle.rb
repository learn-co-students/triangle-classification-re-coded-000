class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a,b,c)
     @a=a ; @b=b ; @c=c
  end
  def kind
    triangleError
    case
    when @a == @b && @b == @c
      :equilateral
    when @a == @b || @b == @c || @a == @c
      :isosceles
    when @a != @b || @b != @c || @a != @c
      :scalene
    end
  end
  def triangleError
    case
   when @a <= 0 || @b <= 0 || @c <= 0 || @a >= @b + @c || @b >= @a + @c || @c >= @b + @a
       raise TriangleError
     end
  end
end
class TriangleError < StandardError

end
