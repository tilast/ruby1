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
def triangle(a, b, c)
  x, y, z = [a, b, c].sort

  raise TriangleError.new("Some variable is negative") if x <= 0 || y <= 0 || z <= 0
  raise TriangleError.new("This triangle can't exist") if x + y <= z

  if x == y && x == z
  	:equilateral
  elsif x == y || x == z || y == z
  	:isosceles
  else
  	:scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
