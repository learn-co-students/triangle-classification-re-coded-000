

class Triangle
  # write code here
  attr_accessor :long1 ,:long2 ,:long3
  def initialize(long1,long2,long3)
    @long1=long1
    @long2=long2
    @long3=long3
  end
  def kind
   validate_triangle
   if long1 == long2 && long2 == long3
     :equilateral
   elsif long1 == long2 || long2 == long3 || long1 == long3
     :isosceles
   else
     :scalene
   end
 end

 def validate_triangle
   real_triangle = [(long1 + long2 > long3), (long1 + long3 > long2), (long2 + long3 > long1)]
   [long1, long2, long3].each { |long| real_triangle << false if long <= 0 }
   raise TriangleError if real_triangle.include?(false)
 end
end
class TriangleError < StandardError
end
