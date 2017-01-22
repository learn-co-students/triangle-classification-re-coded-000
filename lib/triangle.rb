class Triangle
  # write code here
  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
    has_size?
  end
  def kind
    if @a==@b && @b==@c
      :equilateral
    elsif @b==@c ||@a==@c ||@a==@b
      :isosceles
    else
      :scalene
    end
  end
  def has_size?
    raise TriangleError if !((@a+@b)>@c && (@a+@c)>@b &&(@b+@c)>@a)
  end
end
class TriangleError < StandardError
end
