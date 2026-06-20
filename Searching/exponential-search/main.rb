# Exponential Search is an efficient searching algorithm designed for sorted arrays that finds a
# target element by first finding a localized range and then performing a traditional binary search
# within that range. It is also known as doubling search, galloping search, or finger search
#
# arr    - the sorted array to search through
# target - the value to search for
#
# returns the index of the target value, or -1 if not found
#
# Best Case:    O(1)
# Worst Case:   O(log(n))
# Average Case: O(log(n))
# Space Complexity: O(log(n))

def binary_search(arr, target, low, high)
  while low <= high
    mid = low + (high - low) / 2

    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end

  -1
end

def exponential_search(arr, target)
  size = arr.length
  return -1 if size == 0

  return 0 if arr[0] == target

  bound = 1

  while bound < size && arr[bound] <= target
    bound *= 2
  end

  low = bound / 2
  high = [bound, size - 1].min

  binary_search(arr, target, low, high)
end


# =========================
# TEST CASES
# =========================

puts "EMPTY ARRAY"
puts exponential_search([], 10)

puts "\nSINGLE ELEMENT"
puts exponential_search([999999999], 999999999)
puts exponential_search([999999999], 1)

puts "\nTWO ELEMENTS"
puts exponential_search([10, 20], 10)
puts exponential_search([10, 20], 20)
puts exponential_search([10, 20], 15)

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

puts exponential_search(large_vals, -2147483648)
puts exponential_search(large_vals, 0)
puts exponential_search(large_vals, 2147483647)
puts exponential_search(large_vals, 123)

puts "\nDUPLICATES"
dup = [7, 7, 7, 7, 7, 7, 7]
puts exponential_search(dup, 7)
puts exponential_search(dup, 8)

puts "\nNEGATIVE NUMBERS"
negatives = [-50, -20, -10, -5, -1]
puts exponential_search(negatives, -10)
puts exponential_search(negatives, -51)

puts "\nLARGE ARRAY"
big = []

(0...10000).each do |i|
  big << i * 3
end

puts exponential_search(big, 0)
puts exponential_search(big, 3 * 5000)
puts exponential_search(big, 3 * 9999)
puts exponential_search(big, 1234567)