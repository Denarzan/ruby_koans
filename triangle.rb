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
  my_array = [a, b, c]
  sorted_array = my_array.sort
  if [a, b, c].min <= 0 or (sorted_array[0] + sorted_array[1] <= sorted_array[2])
    raise TriangleError
  elsif a == b and a == c
    :equilateral
  elsif a == b or b == c or a == c
    :isosceles
  elsif a != b and a != c
    :scalene
  else
    raise TriangleError

  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
