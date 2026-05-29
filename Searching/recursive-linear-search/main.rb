# Recursive linear search is a method for finding a specific target value within an array
# by calling the same function repeatedly on smaller portions of the dataset until the target
# is found or all elements are exhausted.
#
# Instead of using loops, it moves through the array using recursion.
#
# arr    - the array to search through
# target - the value to search for
# index  - the current position in the array
#
# returns the index of the target value, or -1 if not found
#
# Best Case: O(1)
# Worst Case: O(n)
# Average Case: O(n)
# Space Complexity: O(n) (due to recursion stack)

def recursive_linear_search(arr, target, index)
  return -1 if index == arr.length

  return index if arr[index] == target

  recursive_linear_search(arr, target, index + 1)
end


# =========================
# TEST CASES
# =========================

puts "EMPTY ARRAY"
puts recursive_linear_search([], 10, 0)

puts "\nSINGLE ELEMENT"
puts recursive_linear_search([999999999], 999999999, 0)
puts recursive_linear_search([999999999], 1, 0)

puts "\nTWO ELEMENTS"
puts recursive_linear_search([10, 20], 10, 0)
puts recursive_linear_search([10, 20], 20, 0)
puts recursive_linear_search([10, 20], 15, 0)

puts "\nLARGE INTEGERS"
large_vals = [
  -2147483648,
  -1000000000,
  -500,
  0,
  500,
  1000000000,
  2147483647
]

puts recursive_linear_search(large_vals, -2147483648, 0)
puts recursive_linear_search(large_vals, 0, 0)
puts recursive_linear_search(large_vals, 2147483647, 0)
puts recursive_linear_search(large_vals, 123, 0)

puts "\nDUPLICATES"
dup = [7, 7, 7, 7, 7, 7]
puts recursive_linear_search(dup, 7, 0)
puts recursive_linear_search(dup, 8, 0)

puts "\nNEGATIVE NUMBERS"
negatives = [-50, -20, -10, -5, -1]
puts recursive_linear_search(negatives, -10, 0)
puts recursive_linear_search(negatives, -51, 0)

puts "\nLARGE ARRAY"
big = []

(0...1000).each do |i|
  big << i * 3
end

puts recursive_linear_search(big, 0, 0)
puts recursive_linear_search(big, 3 * 500, 0)
puts recursive_linear_search(big, 3 * 999, 0)
puts recursive_linear_search(big, 1234567, 0)
