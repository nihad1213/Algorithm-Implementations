# Jump Search (also known as block search) is a searching algorithm for
# sorted arrays that checks fewer elements than a linear
# search by jumping ahead by fixed steps.
#
# arr    - the sorted array to search through
# target - the value to search for
#
# returns the index of the target value, or -1 if not found
#
# Best Case:    O(1)
# Worst Case:   O(sqrt(n))
# Average Case: O(sqrt(n))
# Space Complexity: O(1)

def jump_search(arr, target)
  size = arr.length
  return -1 if size == 0

  step = Math.sqrt(size).to_i
  prev = 0

  while prev < size && arr[prev] < target
    nxt = prev + step

    nxt = size if nxt > size

    if arr[nxt - 1] >= target
      break
    end

    prev = nxt

    return -1 if prev >= size
  end

  fin = prev + step
  fin = size if fin > size

  (prev...fin).each do |i|
    return i  if arr[i] == target
    return -1 if arr[i] > target
  end

  -1
end


# =========================
# TEST CASES
# =========================

puts "EMPTY ARRAY"
puts jump_search([], 10)

puts "\nSINGLE ELEMENT"
puts jump_search([999999999], 999999999)
puts jump_search([999999999], 1)

puts "\nTWO ELEMENTS"
puts jump_search([10, 20], 10)
puts jump_search([10, 20], 20)
puts jump_search([10, 20], 15)

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

puts jump_search(large_vals, -2147483648)
puts jump_search(large_vals, 0)
puts jump_search(large_vals, 2147483647)
puts jump_search(large_vals, 123)

puts "\nDUPLICATES"
dup = [7, 7, 7, 7, 7, 7, 7]
puts jump_search(dup, 7)
puts jump_search(dup, 8)

puts "\nNEGATIVE NUMBERS"
negatives = [-50, -20, -10, -5, -1]
puts jump_search(negatives, -10)
puts jump_search(negatives, -51)

puts "\nLARGE ARRAY"
big = []

(0...10000).each do |i|
  big << i * 3
end

puts jump_search(big, 0)
puts jump_search(big, 3 * 5000)
puts jump_search(big, 3 * 9999)
puts jump_search(big, 1234567)