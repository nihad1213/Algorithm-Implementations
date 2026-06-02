import math

"""
Jump Search (also known as block search) is a searching algorithm for 
sorted arrays that checks fewer elements than a linear 
search by jumping ahead by fixed steps.

Args:
    arr (list[int]): The list to search through
    target (int): The value to search for

Returns:
    int: The index of the target value, or -1 if not found

Best Case: O(1)
Worst Case: O(sqrt(n))
Average Case: O(sqrt(n))
Space Complexity: O(1)
"""

def jumpSearch(arr: list[int], target: int) -> int:
    n = len(arr)
    if n == 0:
        return -1
    
    step = int(math.sqrt(n))
    prev = 0
    
    while arr[min(step, n) - 1] < target:
        prev = step
        step += int(math.sqrt(n))
        if prev >= n:
            return -1
            
    while arr[prev] < target:
        prev += 1
        
        if prev == min(step, n):
            return -1

    if arr[prev] == target:
        return prev

    return -1
    
# 1. EMPTY ARRAY
empty = []

print("Empty array tests:")
print(jumpSearch(empty, 10))


# 2. SINGLE ELEMENT
one = [999999999]

print("\nSingle element tests:")
print(jumpSearch(one, 999999999))
print(jumpSearch(one, 1))


# 3. TWO ELEMENTS (boundary check)
two = [10, 20]

print("\nTwo elements tests:")
print(jumpSearch(two, 10))
print(jumpSearch(two, 20))
print(jumpSearch(two, 15))


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
print(jumpSearch(largeVals, -2147483648))
print(jumpSearch(largeVals, 0))
print(jumpSearch(largeVals, 2147483647))
print(jumpSearch(largeVals, 123))


# 5. LARGE ARRAY
big = []

for i in range(500):
    big.append(i * 3)

print("\nLarge array tests:")
print(jumpSearch(big, 0))
print(jumpSearch(big, 3 * 499))  # last element
print(jumpSearch(big, 1234567))


# 6. DUPLICATES
dup = [7, 7, 7, 7, 7, 7, 7]

print("\nDuplicate values tests:")
print(jumpSearch(dup, 7))
print(jumpSearch(dup, 8))


# 7. NEGATIVE NUMBERS
negatives = [-50, -20, -10, -5, -1]

print("\nNegative numbers tests:")
print(jumpSearch(negatives, -10))
print(jumpSearch(negatives, -51))
