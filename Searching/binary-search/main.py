"""
Binary search is a searching algorithm that find position of
a specific value within a sorted array. Instead of searching
every item one by one it repeatedly cuts the search are in
half.

Args:
    arr (list[int]): The list to search through
    target (int): The value to search for

Returns:
    int: The index of the target value, or -1 if not found

Best Case: O(1)
Worst Case: O(log n)
Average Case: O(log n)
Space Complexity: O(1)
"""

def binarySearch(arr: list[int], target: int) -> int:
    left, right = 0, len(arr) - 1

    while left <= right:
        mid = left + (right - left) // 2

        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            left = mid + 1
        else:
            right = mid - 1

    return -1

print("\nEMPTY ARRAY")
print(binarySearch([], 10))

print("\nSINGLE ELEMENT")
print(binarySearch([999999999], 999999999))
print(binarySearch([999999999], 1))

print("\nTWO ELEMENTS")
print(binarySearch([10, 20], 10))
print(binarySearch([10, 20], 20))
print(binarySearch([10, 20], 15))

print("\nLARGE INTEGERS")
large_vals = [
    -2**31,
    -1000000000,
    -500,
    0,
    500,
    1000000000,
    2**31 - 1
]

print(binarySearch(large_vals, -2**31))
print(binarySearch(large_vals, 0))
print(binarySearch(large_vals, 2**31 - 1))
print(binarySearch(large_vals, 123))

print("\nDUPLICATES")
dup = [7, 7, 7, 7, 7, 7]
print(binarySearch(dup, 7))
print(binarySearch(dup, 8))

print("\nNEGATIVE NUMBERS")
neg = [-50, -20, -10, -5, -1]
print(binarySearch(neg, -10))
print(binarySearch(neg, -51))

print("\nLARGE ARRAY")
big = [i * 3 for i in range(100000)]

print(binarySearch(big, 0))
print(binarySearch(big, 3 * 50000))
print(binarySearch(big, 123456789))