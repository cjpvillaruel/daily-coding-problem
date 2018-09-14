# Given a list of numbers and a number k,
# return whether any two numbers from the list add up to k.

# For example, given [11, 4, 10, 15, 3, 7] and k of 17,
# return true since 10 + 7 is 17.

def check_sum_in_list(numbers, k)
  return false if !validate_input(numbers, k)
  size = numbers.size
  (0..size - 2).each do |i|
    (i+1..size-1).each do |j|
      return true if numbers[i] + numbers[j] == k
    end
  end
  false
end

def validate_input(numbers, k)
  return false if numbers.empty? || !k.is_a?(Integer)
  numbers.each do |number|
    return false unless number.is_a?(Integer)
  end
  true
end
