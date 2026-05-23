# Binary search is a searching algorithm that find position of
# a specific value within a sorted array. Instead of searching
# every item one by one it repeatedly cuts the search area in
# half.
#
# arr - the array to search through
# target - the value to search for
# returns the index of the target value, or -1 if not found
#
# Best Case: O(1)
# Worst Case: O(log n)
# Average Case: O(log n)
# Space Complexity: O(1)

def binary_search(arr, target)
  left = 0
  right = arr.length - 1

  while left <= right
    mid = left + (right - left) / 2

    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  -1
end

puts "EMPTY ARRAY"
puts binary_search([], 10)

puts "\nSINGLE ELEMENT"
puts binary_search([999999999], 999999999)
puts binary_search([999999999], 1)

puts "\nTWO ELEMENTS"
puts binary_search([10, 20], 10)
puts binary_search([10, 20], 20)
puts binary_search([10, 20], 15)

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

puts binary_search(large_vals, -2147483648)
puts binary_search(large_vals, 0)
puts binary_search(large_vals, 2147483647)
puts binary_search(large_vals, 123)

puts "\nDUPLICATES"
dup = [7, 7, 7, 7, 7, 7]
puts binary_search(dup, 7)
puts binary_search(dup, 8)

puts "\nNEGATIVE NUMBERS"
neg = [-50, -20, -10, -5, -1]
puts binary_search(neg, -10)
puts binary_search(neg, -51)

puts "\nLARGE ARRAY"
big = []
100000.times do |i|
  big << i * 3
end

puts binary_search(big, 0)
puts binary_search(big, 3 * 50000)
puts binary_search(big, 123456789)