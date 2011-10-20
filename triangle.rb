# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
class Triangle
  def initialize(a, b, c)
    @sorted = [a, b, c].sort
    raise TriangleError unless @sorted[0] + @sorted[1] > @sorted[2]
  end

  def self.type(a, b, c)
    new(a, b, c).compute_type
  end

  def compute_type
    if @sorted.uniq.size == 1
      :equilateral
    elsif @sorted.uniq.size == 2
      :isosceles
    else
      :scalene
    end
  end
end

def triangle(a, b, c)
  Triangle.type(a, b, c)
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
