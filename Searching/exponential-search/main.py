import math

"""
Exponential Search is an efficient searching algorithm designed for sorted arrays that finds a
target element by first finding a localized range and then performing a traditional binary search
within that range. It is also known as doubling search, galloping search, or finger search

Args:
    arr (list[int]): The list to search through
    target (int): The value to search for

Returns:
    int: The index of the target value, or -1 if not found

Best Case: O(1)
Worst Case: O(log(n))
Average Case: O(log(n))
Space Complexity: O(log(N))
"""

def binarySearch(arr: list[int], target: int, low: int, high: int) -> int:
    while low <= high:
        mid = low + (high - low) // 2

        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            low = mid + 1
        else:
            high = mid - 1

    return -1


def exponentialSearch(arr: list[int], target: int) -> int:
    n = len(arr)
    if n == 0:
        return -1

    if arr[0] == target:
        return 0

    bound = 1
    while bound < n and arr[bound] <= target:
        bound *= 2

    low = bound // 2
    high = min(bound, n - 1)

    return binarySearch(arr, target, low, high)

# 1. EMPTY ARRAY
empty = []

print("Empty array tests:")
print(exponentialSearch(empty, 10))


# 2. SINGLE ELEMENT
one = [999999999]

print("\nSingle element tests:")
print(exponentialSearch(one, 999999999))
print(exponentialSearch(one, 1))


# 3. TWO ELEMENTS (boundary check)
two = [10, 20]

print("\nTwo elements tests:")
print(exponentialSearch(two, 10))
print(exponentialSearch(two, 20))
print(exponentialSearch(two, 15))


# 4. LARGE INTEGERS
largeVals = [
    -2147483648,
    -1000000000,
    -500,
    0,
    500,
    1000000000,
    2147483647
]

print("\nLarge integer tests:")
print(exponentialSearch(largeVals, -2147483648))
print(exponentialSearch(largeVals, 0))
print(exponentialSearch(largeVals, 2147483647))
print(exponentialSearch(largeVals, 123))


# 5. LARGE ARRAY
big = []

for i in range(500):
    big.append(i * 3)

print("\nLarge array tests:")
print(exponentialSearch(big, 0))
print(exponentialSearch(big, 3 * 499))  # last element
print(exponentialSearch(big, 1234567))


# 6. DUPLICATES
dup = [7, 7, 7, 7, 7, 7, 7]

print("\nDuplicate values tests:")
print(exponentialSearch(dup, 7))
print(exponentialSearch(dup, 8))


# 7. NEGATIVE NUMBERS
negatives = [-50, -20, -10, -5, -1]

print("\nNegative numbers tests:")
print(exponentialSearch(negatives, -10))
print(exponentialSearch(negatives, -51))