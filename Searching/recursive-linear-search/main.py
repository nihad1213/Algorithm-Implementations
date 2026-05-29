"""
Recursive linear search is a method for finding a specific target value within an array
by calling the same function repeatedly on smaller portions of the dataset until the target
is found or all elements are exhousted.

Args:
    arr (list[int]): The list to search through
    target (int): The value to search for
    index (int): The current position in array

Returns:
    int: The index of the target value, or -1 if not found

Best Case: O(1)
Worst Case: O(n)
Average Case: O(n)
Space Complexity: O(n)
"""

def recursiveLinearSearch(arr: list[int], target: int, index: int) -> int:
    if index == len(arr):
        return -1

    if arr[index] == target:
        return index

    return recursiveLinearSearch(arr, target, index + 1)


# 1. EMPTY ARRAY
empty = []

print("Empty array tests:")
print(recursiveLinearSearch(empty, 10, 0))


# 2. SINGLE ELEMENT
one = [999999999]

print("\nSingle element tests:")
print(recursiveLinearSearch(one, 999999999, 0))
print(recursiveLinearSearch(one, 1, 0))


# 3. TWO ELEMENTS (boundary check)
two = [10, 20]

print("\nTwo elements tests:")
print(recursiveLinearSearch(two, 10, 0))
print(recursiveLinearSearch(two, 20, 0))
print(recursiveLinearSearch(two, 15, 0))


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
print(recursiveLinearSearch(largeVals, -2147483648, 0))
print(recursiveLinearSearch(largeVals, 0, 0))
print(recursiveLinearSearch(largeVals, 2147483647, 0))
print(recursiveLinearSearch(largeVals, 123, 0))


# 5. LARGE ARRAY (safe recursion size)
big = []

for i in range(500):
    big.append(i * 3)

print("\nLarge array tests:")
print(recursiveLinearSearch(big, 0, 0))
print(recursiveLinearSearch(big, 3 * 500, 0))
print(recursiveLinearSearch(big, 3 * 999, 0))
print(recursiveLinearSearch(big, 1234567, 0))


# 6. DUPLICATES
dup = [7, 7, 7, 7, 7, 7, 7]

print("\nDuplicate values tests:")
print(recursiveLinearSearch(dup, 7, 0))
print(recursiveLinearSearch(dup, 8, 0))


# 7. NEGATIVE NUMBERS
negatives = [-50, -20, -10, -5, -1]

print("\nNegative numbers tests:")
print(recursiveLinearSearch(negatives, -10, 0))
print(recursiveLinearSearch(negatives, -51, 0))
