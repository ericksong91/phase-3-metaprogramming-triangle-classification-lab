require 'pry'

class Triangle
  
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind

    raise TriangleError if sides_zero || triangle_inequality

    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side3 == side1
      :isosceles
    else
      :scalene
    end 
  end

  def sides_zero
    side1 <=0 || side2 <= 0 || side3 <= 0
  end

  def triangle_inequality
    side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2
  end

  class TriangleError < StandardError
  end

end

new_triangle = Triangle.new(1,2,3)


