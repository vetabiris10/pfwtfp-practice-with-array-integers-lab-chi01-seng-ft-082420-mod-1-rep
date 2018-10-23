array_of_integers = [*0...50]

def all_odds(array)
  # return all odd numbers in array_of_integers
  array.select(&:odd?)
end

def all_evens(array)
  # return all even numbers in array_of_integers
  array.select(&:even?)
end

def all_squares(array)
  # return the square of all the numbers in array_of_integers
  array.map { |n| n * n }
end

def first_square_greater_than_350(array)
  # return the first number whose square is > 350 in array_of_integers
  array.find { |n| n * n > 350 }
end

def all_squares_greater_than_350(array)
  # return all the numbers whose square is > 350 in array_of_integers
  array.select { |n| n * n > 350 }
end

def all_cubes(array)
  # return all the numbers, cubed in array_of_integers
  array.map { |n| n * n * n }
end

def first_cube_greater_than_500(array)
  # return the first number whose cube is > 500 in array_of_integers
  array.find { |n| n * n * n > 500 }
end

def all_cubes_greater_than_500(array)
  # return all the numbers whose cube is < 500 in array_of_integers
  array.select { |n| n * n * n > 500 }
end

def sum(array)
  # return the sum of all integers in array_of_integers
  array.inject(0) { |sum, x| sum + x }
end

def average_value(array)
  # return the average of all integers in array_of_integers
  sum(array) / array.length.to_f
end
