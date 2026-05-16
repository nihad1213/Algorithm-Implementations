#!/usr/bin/env ruby

=begin
Sentinel Linear Search

Description:
Sentinel linear search is an optimization of the linear search algorithm.
It places a sentinel value at the end of the array to avoid checking the bounds during each iteration
until the target is found or the sentinel is reached.

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

def sentinelLinearSearch(arr, target)
  return -1 if arr.empty?

  arr << target

  index = 0
  while arr[index] != target
    index += 1
  end

  arr.pop

  index < arr.size ? index : -1
end

puts sentinelLinearSearch([1, 2, 3, 4, 5], 3)
puts sentinelLinearSearch([1, 2, 3, 4, 5], 6)
puts sentinelLinearSearch([], 1)
puts sentinelLinearSearch([1, 2, 3, 4, 5], 1)
puts sentinelLinearSearch([1, 2, 3, 4, 5], 5)