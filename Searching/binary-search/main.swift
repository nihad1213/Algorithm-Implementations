import Foundation

/**
 * Binary search is a searching algorithm that find position of
 * a specific value within a sorted array. Instead of searching
 * every item one by one it repeatedly cuts the search are in
 * half.
 *
 * @param arr - the array to search through
 * @param target - the value to search for
 * @returns the index of the target if found, otherwise -1

 * Best Case: O(1)
 * Worst Case: O(log n)
 * Average Case: O(log n)
 * Space Complexity: O(1)
 */

func binarySearch(_ arr: [Int], _ target: Int) -> Int {
    var left = 0
    var right = arr.count - 1
    
    while left <= right {
        let mid = left + (right - left) / 2
        
        if arr[mid] == target {
            return mid
        } else if arr[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    
    return -1
}

print("EMPTY ARRAY")
print(binarySearch([], 10))

print("\nSINGLE ELEMENT")
print(binarySearch([999999999], 999999999))
print(binarySearch([999999999], 1))

print("\nTWO ELEMENTS")
print(binarySearch([10, 20], 10))
print(binarySearch([10, 20], 20))
print(binarySearch([10, 20], 15))

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

print(binarySearch(largeVals, Int.min))
print(binarySearch(largeVals, 0))
print(binarySearch(largeVals, Int.max))
print(binarySearch(largeVals, 123))

print("\nDUPLICATES")
let dup = [7, 7, 7, 7, 7, 7]
print(binarySearch(dup, 7))
print(binarySearch(dup, 8))

print("\nNEGATIVE NUMBERS")
let neg = [-50, -20, -10, -5, -1]
print(binarySearch(neg, -10))
print(binarySearch(neg, -51))

print("\nLARGE ARRAY")
var big: [Int] = []
for i in 0..<100000 {
    big.append(i * 3)
}

print(binarySearch(big, 0))
print(binarySearch(big, 3 * 50000))
print(binarySearch(big, 123456789))