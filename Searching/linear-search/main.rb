#!/usr/bin/env ruby

=begin
Linear Search (Sequential Search)

Description:
Linear search is the simplest searching algorithm.
It checks each element one by one until the target is found.

Parameters:
- arr (Array): The array to search through
- target (Any): The value to search for

Returns:
- Integer index of the target value, or -1 if not found

Complexity:
- Best Case: O(1)
- Worst Case: O(n)
- Average Case: O(n)
- Space Complexity: O(1)
=end

def linear_search(arr, target)
  arr.each_with_index do |value, index|
    return index if value == target
  end

  -1
end

puts linear_search([1, 2, 3, 4, 5], 3)
puts linear_search([1, 2, 3, 4, 5], 6)
puts linear_search([], 1)
puts linear_search([1, 2, 3, 4, 5], 1)
puts linear_search([1, 2, 3, 4, 5], 5)