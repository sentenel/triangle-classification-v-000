require 'pry'
class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    sides = [self.side_1, self.side_2, self.side_3].sort {|a, b| a-b}
    binding.pry
    case
    when sides[0] >= sides[1] + sides[2] || sides[2] <= 0
      raise TriangleError
    when sides[0] > sides[1] && sides[1] > sides[2]
      :scalene
    when sides[0] == sides[2]
      :equilateral
    else
      :isosceles
    end
  end

  class TriangleError < StandardError
  end
end
