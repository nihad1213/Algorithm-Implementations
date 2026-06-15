"""
Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent
elements if they are in the wrong order. This algorithm is not efficient for large data sets 
as its average and worst-case time complexity are quite high.

Args:
    arr (list[int]): The list to sort

Returns:
    list[int]: The sorted list

Best Case: O(n)
Worst Case: O(n^2)
Average Case: O(n^2)
Space Complexity: O(1)
"""

def bubble_sort(arr: list[int]) -> list[int]:
    length = len(arr)

    for i in range(0, length):
        swapped = False

        for j in range(0, length - i - 1):
            if arr[j] > arr[j + 1]:
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
                swapped = True

        if not swapped:
            break
    
    return arr


# 1. EMPTY ARRAY
empty = []

print("Empty array tests:")
print(bubble_sort(empty))


# 2. SINGLE ELEMENT
one = [999999999]

print("\nSingle element tests:")
print(bubble_sort(one))


# 3. TWO ELEMENTS
two = [20, 10]

print("\nTwo elements tests:")
print(bubble_sort(two))


# 4. ALREADY SORTED
sortedArr = [1, 2, 3, 4, 5, 6, 7]

print("\nAlready sorted tests:")
print(bubble_sort(sortedArr))


# 5. REVERSE SORTED
reverseArr = [7, 6, 5, 4, 3, 2, 1]

print("\nReverse sorted tests:")
print(bubble_sort(reverseArr))


# 6. RANDOM VALUES
randomArr = [64, 34, 25, 12, 22, 11, 90]

print("\nRandom values tests:")
print(bubble_sort(randomArr))


# 7. DUPLICATES
duplicates = [5, 1, 5, 3, 5, 2, 5]

print("\nDuplicate values tests:")
print(bubble_sort(duplicates))


# 8. ALL SAME VALUES
sameValues = [7, 7, 7, 7, 7]

print("\nAll same values tests:")
print(bubble_sort(sameValues))


# 9. NEGATIVE VALUES
negativeVals = [-5, -1, -10, -3, -2]

print("\nNegative values tests:")
print(bubble_sort(negativeVals))


# 10. MIXED POSITIVE AND NEGATIVE
mixedVals = [3, -1, 4, -5, 0, 2]

print("\nMixed values tests:")
print(bubble_sort(mixedVals))


# 11. LARGE INTEGERS
largeVals = [-2147483648, 2147483647, 0, 1000000000, -1000000000]

print("\nLarge integer tests:")
print(bubble_sort(largeVals))


# 12. MANY DUPLICATES
manyDuplicates = [4, 2, 4, 1, 4, 3, 4, 0, 4]

print("\nMany duplicates tests:")
print(bubble_sort(manyDuplicates))


# 13. FLOATING POINT NUMBERS
floats = [3.14, 1.41, 2.71, 0.57]

print("\nFloating point tests:")
print(bubble_sort(floats))


# 14. MIXED ORDER
mixedOrder = [100, 1, 50, 2, 75, 3, 25]

print("\nMixed order tests:")
print(bubble_sort(mixedOrder))