
class Triangle

  attr_accessor :side1, :side2, :side3
  @sides = []

  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = side1, side2, side3
    @sides = [side1, side2, side3]
  end

  def kind
    if(negative? == true || valid? == false)
      raise TriangleError
    elsif(equilateral?)
      :equilateral
    elsif(scalene?)
      :scalene
    elsif(isosceles?)
      :isosceles
    end
  end

  def negative?
    @sides.each do |length|
      if(length <= 0)
        return true
      end
    end
  end

  def equilateral?
    (@side1 == @side2) && (@side1 == @side3)
  end

  def scalene?
    (@side1 != @side2) && (@side1!= @side3) && (@side2 != @side3)
  end

  def isosceles?
    (@side2 == @side3) || (@side1 == @side2) || (@side1 = @side3)
  end

  def valid?
    (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side3 > @side2)
  end

end

class TriangleError < StandardError

end

#   def initialize(s1, s2, s3)
#     @s1 = s1
#     @s2 = s2
#     @s3 = s3
#   end
#
#   def kind
#     if @s1 == @s2 && @s1 == @s3 && @s2 == @s3
#       :equilateral
#     elsif @s1 == @s2 || @s1 == @s3 || @s2 == @s3
#       :isosceles
#     elsif @s1 != @s2 && @s1 != @s3 && @s2 != @s3
#       :scalene
#     elsif @s1 <= 0 || @s2 <= 0 || @s3 <= 0
#       raise TriangleError
#     end
#   end
#
#   class TriangleError < StandardError
#
#   end
#
# end
