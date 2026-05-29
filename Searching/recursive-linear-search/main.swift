import Foundation

/**
 Recursive linear search is a method for finding a specific target value within an array
 by calling the same function repeatedly on smaller portions of the dataset until the target
 is found or all elements are exhausted.

 Instead of looping, it moves through the array using recursion.

 ## Parameters
 - arr: The array to search through
 - target: The value to search for
 - index: The current position in the array

 ## Returns
 - The index of the target value if found, otherwise -1

 ## Complexity
 - Best Case: O(1)
 - Worst Case: O(n)
 - Average Case: O(n)
 - Space Complexity: O(n) (due to recursion stack)
 */

func recursiveLinearSearch(_ arr: [Int], _ target: Int, _ index: Int) -> Int {
    if index == arr.count {
        return -1
    }

    if arr[index] == target {
        return index
    }

    return recursiveLinearSearch(arr, target, index + 1)
}

// MARK: - TEST CASES

print("EMPTY ARRAY")
print(recursiveLinearSearch([], 10, 0))

print("\nSINGLE ELEMENT")
print(recursiveLinearSearch([999999999], 999999999, 0))
print(recursiveLinearSearch([999999999], 1, 0))

print("\nTWO ELEMENTS")
print(recursiveLinearSearch([10, 20], 10, 0))
print(recursiveLinearSearch([10, 20], 20, 0))
print(recursiveLinearSearch([10, 20], 15, 0))

print("\nLARGE INTEGERS")
let largeVals: [Int] = [
    Int.min,
    -1000000000,
    -500,
    0,
    500,
    1000000000,
    Int.max
]

print(recursiveLinearSearch(largeVals, Int.min, 0))
print(recursiveLinearSearch(largeVals, 0, 0))
print(recursiveLinearSearch(largeVals, Int.max, 0))
print(recursiveLinearSearch(largeVals, 123, 0))

print("\nDUPLICATES")
let dup = [7, 7, 7, 7, 7, 7]
print(recursiveLinearSearch(dup, 7, 0))
print(recursiveLinearSearch(dup, 8, 0))

print("\nNEGATIVE NUMBERS")
let neg = [-50, -20, -10, -5, -1]
print(recursiveLinearSearch(neg, -10, 0))
print(recursiveLinearSearch(neg, -51, 0))

print("\nLARGE ARRAY")
var big: [Int] = []
for i in 0..<1000 {
    big.append(i * 3)
}

print(recursiveLinearSearch(big, 0, 0))
print(recursiveLinearSearch(big, 3 * 500, 0))
print(recursiveLinearSearch(big, 3 * 999, 0))
print(recursiveLinearSearch(big, 1234567, 0))
