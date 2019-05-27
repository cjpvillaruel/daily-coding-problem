# This problem was asked by Stripe.
# Given an array of integers, find the first missing positive integer in linear time and constant space. 
# In other words, find the lowest positive integer that does not exist in the array. 
# The array can contain duplicates and negative numbers as well.
# For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.
# You can modify the input array in-place.

def get_missing_pos_int(numbers)
  array_map = []
  largest = 0

  # map the number values in a new array as index
  # and mark it as true if it exists
  numbers.each do |i|
    array_map[i] = true if i > 0 
    largest = i if i > largest
  end
  
  # return 1 as default if there are no positive numbers 
  return 1 if array_map.size == 0 

  # get the lowest index that has null value
  array_map.each_with_index do |value, key|
    return key if (value == nil && key > 0)
  end

  # else if the numbers are complete from 1-n, get the n+1
  largest + 1
end
