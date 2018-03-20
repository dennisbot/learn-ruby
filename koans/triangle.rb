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

def is_not_a_well_defined_triangle? (a, b, c)
  ((a == 0 && b == 0 && c == 0) ||
  (a < 0 || b < 0 || c < 0) ||
  (a >= b + c || b >= a + c || c >= a + b))
end

def triangle(a, b, c)
  # binding.pry
  if is_not_a_well_defined_triangle?(a, b, c)
    raise TriangleError.new("There is no such 
      triangle a=#{a}, b=#{b} and c=#{c}")
  end  
  (a != b && b != c && a != c) ? :scalene : 
  (a == b && b == c) ? :equilateral : :isosceles
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
