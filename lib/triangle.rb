class Triangle
  attr_reader :kind

  def initialize(one, two, three)
    triangle = [one, two, three]
    if one + two <= three || two + three <= one || one + three <= two || triangle.sum == 0
      raise TriangleError
    elsif triangle.uniq.count == 1
      @kind = :equilateral
    elsif triangle.uniq.count == 2
      @kind = :isosceles
    elsif
      @kind = :scalene
    end
  end

  class TriangleError < StandardError
    "Not a triangle"
  end
end
