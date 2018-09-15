# Given an array of integers, return a new array 
# such that each element at index i of the new array 
# is the product of all the numbers in the original 
# array except the one at i.

def product_array(num_array)
  product_arr = []
  num_array.each_with_index do |num1, i|
    product = 1
    num_array.each_with_index do |num2, j|
      product *= num2 unless i == j
    end
    product_arr.push(product)
  end
  product_arr
end
