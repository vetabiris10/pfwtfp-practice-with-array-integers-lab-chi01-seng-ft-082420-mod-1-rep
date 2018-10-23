require 'spec_helper'
require_relative '../lib/array_practice.rb'

array_of_integers_one = [*0...50]
array_of_integers_two = [*0...10]

describe 'array_practice' do
  describe 'all_odds' do
    it 'returns all odd numbers in an array of integers' do
      expect(all_odds([2, 3, 4])).to eq([3]), 'all_odds did not return the correct set of odd numbers'
      expect(all_odds([1, 2, 3, 4, 5])).to eq([1, 3, 5]), 'all_odds did not return the correct set of odd numbers'
      expect(all_odds([2, 4])).to eq([]), 'all_odds should have returned an empty array if the input array is entirely even integers'
      expect(all_odds(array_of_integers_one)).to eq([1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49]), 'all_odds did not return the correct set of odd numbers'
      expect(all_odds(array_of_integers_two)).to eq([1, 3, 5, 7, 9]), 'all_odds did not return the correct set of odd numbers'
      expect(all_odds([])).to eq([]), 'all_odds did not return an empty array when passed an empty array'
    end
  end

  describe 'all_evens' do
    it 'returns all even numbers in array_of_integers' do
      expect(all_evens([2, 3, 4])).to eq([2, 4]), 'all_evens did not return the correct set of odd numbers'
      expect(all_evens([1, 2, 3, 4, 5, 6])).to eq([2, 4, 6]), 'all_evens did not return the correct set of odd numbers'
      expect(all_evens([1, 3])).to eq([]), 'all_evens should have returned an empty array if the input array is entirely odd integers'
      expect(all_evens(array_of_integers_one)).to eq([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]), 'all_evens did not return the correct set of odd numbers'
      expect(all_evens(array_of_integers_two)).to eq([0, 2, 4, 6, 8]), 'all_evens did not return the correct set of odd numbers'
      expect(all_evens([])).to eq([]), 'all_evens did not return an empty array when passed an empty array'
    end
  end

  describe 'all_squares' do
    it 'returns the square of all the numbers in array_of_integers' do
      expect(all_squares([2, 3, 4])).to eq([4, 9, 16]), 'all_squares did not return the correct set of squared numbers'
      expect(all_squares([1, 2, 3, 4, 5, 6])).to eq([1, 4, 9, 16, 25, 36]), 'all_squares did not return the correct set of squared numbers'
      expect(all_squares(array_of_integers_one)).to include(0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961, 1024, 1089, 1156, 1225, 1296, 1369, 1444, 1521, 1600, 1681, 1764, 1849, 1936, 2025, 2116, 2209, 2304, 2401), 'all_squares did not return the correct set of squared numbers'
      expect(all_squares(array_of_integers_two)).to include(0, 1, 4, 9, 16, 25, 36, 49, 64, 81), 'all_squares did not return the squared values of [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]'
      expect(all_squares([])).to eq([]), 'all_squares did not return an empty array when passed an empty array'
    end
  end

  describe 'first_square_greater_than_350' do
    it 'returns the first number whose square is > 350 in array_of_integers' do
      expect(first_square_greater_than_350([2, 3, 4])).to eq(nil), 'first_square_greater_than_350 should return nil if no square is greater than 350'
      expect(first_square_greater_than_350([])).to eq(nil), 'first_square_greater_than_350 should return nil if an empty array is passed as input'
      expect(first_square_greater_than_350(array_of_integers_one)).to eq(19), 'first_square_greater_than_350 did not return the correct number'
      expect(first_square_greater_than_350([-20])).to eq(-20)
      expect(first_square_greater_than_350([15, 16, 300, 301, 302])).to eq(300)
    end
  end

  describe 'all_squares_greater_than_350' do
    it 'returns all the numbers whose square is > 350 in array_of_integers' do
      expect(all_squares_greater_than_350([2, 3, 4])).to eq([]), 'all_squares_greater_than_350 should return an empty array if no square is greater than 350'
      expect(all_squares_greater_than_350([])).to eq([]), 'all_squares_greater_than_350 should return an empty array if an empty array is passed as input'
      expect(all_squares_greater_than_350(array_of_integers_one)).to eq([19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49]), 'all_squares_greater_than_350 did not return the correct array of numbers'
      expect(all_squares_greater_than_350([-20])).to eq([-20])
      expect(all_squares_greater_than_350([15, 16, 300, 301, 302])).to eq([300, 301, 302])
    end
  end

  describe 'all_cubes' do
    it 'returns all the numbers, cubed in array_of_integers' do
      expect(all_cubes([2, 3, 4])).to eq([8, 27, 64]), 'all_cubes did not return the correct set of cubed numbers'
      expect(all_cubes([1, 2, 3, 4, 5, 6])).to eq([1, 8, 27, 64, 125, 216]), 'all_cubes did not return the correct set of cubed numbers'
      expect(all_cubes(array_of_integers_two)).to eq([0, 1, 8, 27, 64, 125, 216, 343, 512, 729]), 'all_cubes did not return the cubed values of [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]'
      expect(all_cubes([-3, -5, 6])).to eq([-27, -125, 216])
    end
  end

  describe 'first_cube_greater_than_500' do
    it 'returns the first number whose cube is > 500 in array_of_integers' do
      expect(first_cube_greater_than_500([2, 3, 4])).to eq(nil), 'first_cube_greater_than_500 should return nil if no cubed value is greater than 500'
      expect(first_cube_greater_than_500([])).to eq(nil), 'first_cube_greater_than_500 should return nil if an empty array is passed as input'
      expect(first_cube_greater_than_500(array_of_integers_two)).to eq(8), 'first_cube_greater_than_500 did not return the correct number'
      expect(first_cube_greater_than_500([-10, -11, 12])).to eq(12)
      expect(first_cube_greater_than_500([15, 16, 300, 301, 302])).to eq(15)
    end
  end

  describe 'all_cubes_greater_than_500' do
    it 'returns all the numbers whose cube is < 500 in array_of_integers' do
      expect(all_cubes_greater_than_500([2, 3, 4])).to eq([]), 'all_cubes_greater_than_500 should return an empty array if no cubed value is greater than 500'
      expect(all_cubes_greater_than_500([])).to eq([]), 'all_cubes_greater_than_500 should return an empty array if an empty array is passed as input'
      expect(all_cubes_greater_than_500(array_of_integers_two)).to eq([8, 9]), 'all_cubes_greater_than_500 did not return the correct set of numbers'
      expect(all_cubes_greater_than_500([-10, 15, -11, 12])).to eq([15, 12])
      expect(all_cubes_greater_than_500([15, 16, 300, 301, 302])).to eq([15, 16, 300, 301, 302])
    end
  end

  describe 'sum' do
    it 'returns the sum of all integers in array_of_integers' do
      expect(sum([2, 3, 4])).to eq(9), 'sum did not correctly add 2, 3 and 4 to produce 9'
      expect(sum(array_of_integers_two)).to eq(45), 'sum did not correctly add all array values together'
      expect(sum(array_of_integers_one)).to eq(1225), 'sum did not correctly add all array values together'
      expect(sum([-5, 5])).to eq(0), 'sum did not correctly handle a negative number when adding array values'
    end
  end

  describe 'average_value' do
    it 'returns the average_value of all integers in array_of_integers' do
      expect(average_value([2, 3, 4])).to eq(3), 'average_value did not correctly average_value 2, 3 and 4 to produce 3'
      expect(average_value([1, 2, 3, 4, 5, 6])).to eq(3.5), 'The average value of [1,2,3,4,5,6] should be 4.5, not 4. Make sure to stop Ruby from rounding because we are using integers'
      expect(average_value(array_of_integers_one)).to eq(24.5), 'average_value did not correctly average all array values together. Make sure to stop Ruby from rounding because we are using integers'
      expect(average_value([-5, 5])).to eq(0), 'average_value did not correctly handle a negative number when adding array values'
    end
  end
end
