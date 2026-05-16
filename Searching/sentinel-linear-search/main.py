"""
Sentinel Linear Search is an optimized version of the linear search algorithm.
Number of comparisons is reduced by using a sentinel value to mark the end of the array.

Args:
    arr (list[int]): The list to search through
    target (int): The value to search for

Returns:
    int: The index of the target value, or -1 if not found

Best Case: O(1)
Worst Case: O(n)
Average Case: O(n)
Space Complexity: O(1)
"""

def sentinelLinearSearch(arr: list[int], target: int) -> int:
    n = len(arr)

    if (n == 0):
        return -1

    last = arr[n - 1]

    arr[n - 1] = target

    i = 0
    while arr[i] != target:
        i += 1


    arr[n - 1] = last

    if i < n - 1 or last == target:
        return i

    return -1

print(sentinelLinearSearch([1, 2, 3, 4, 5], 3))
print(sentinelLinearSearch([1, 2, 3, 4, 5], 6))
print(sentinelLinearSearch([], 1))
print(sentinelLinearSearch([1, 2, 3, 4, 5], 1))
print(sentinelLinearSearch([1, 2, 3, 4, 5], 5))