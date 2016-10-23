class Triangle
  # write code here
  attr_accessor :a ,:b,:c
  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
  end
  def kind
    if a==b && a==c && a!=0 && ! (a<0)
      return :equilateral
    elsif b==c && a>c && a!=0 && ! (a<0 || c<0)
        return :isosceles
    elsif a!=b && b!=c && c!=a && a!=0 && b!=0 && c!=0 && !( a<0 ||  b<0 ||  c<0) && (b+c >a)
        return :scalene
    elsif (a==0 && b==0 && c==0) ||(  a<0 ||  b<0 ||  c<0) || (a==b && b<c) || (a==c && a<b) || (c+b <a) 
        raise TriangleError
    else
      return :isosceles
  end
end

end
class TriangleError < StandardError

end
