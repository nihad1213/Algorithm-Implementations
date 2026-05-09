"""
Linear Search Algorithm

Time Complexity:
Best: O(1)
Worst: O(n)
Average: O(n)
Space: O(1)
"""

def linearSearch(arr, target):
    for index, value in enumerate(arr):
        if value == target:
            return index
    return -1


print(linearSearch([1, 2, 3, 4, 5], 3))
print(linearSearch([1, 2, 3, 4, 5], 6))
print(linearSearch([], 1))
print(linearSearch([1, 2, 3, 4, 5], 1))
print(linearSearch([1, 2, 3, 4, 5], 5))