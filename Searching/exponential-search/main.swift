import Foundation

/**
 Exponential Search is an efficient searching algorithm designed for sorted arrays that finds a
 target element by first finding a localized range and then performing a traditional binary search
 within that range. It is also known as doubling search, galloping search, or finger search

 ## Parameters
 - arr: The sorted array to search through
 - target: The value to search for

 ## Returns
 - The index of the target value if found, otherwise -1

 ## Complexity
 - Best Case:    O(1)
 - Worst Case:   O(log(n))
 - Average Case: O(log(n))
 - Space Complexity: O(log(n))
 */

func binarySearch(_ arr: [Int], _ target: Int, _ low: Int, _ high: Int) -> Int {
    var low = low
    var high = high

    while low <= high {
        let mid = low + (high - low) / 2

        if arr[mid] == target {
            return mid
        } else if arr[mid] < target {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }

    return -1
}

func exponentialSearch(_ arr: [Int], _ target: Int) -> Int {
    let size = arr.count
    if size == 0 { return -1 }

    if arr[0] == target { return 0 }

    var bound = 1

    while bound < size && arr[bound] <= target {
        bound *= 2
    }

    let low = bound / 2
    let high = min(bound, size - 1)

    return binarySearch(arr, target, low, high)
}

// MARK: - TEST CASES

print("EMPTY ARRAY")
print(exponentialSearch([], 10))

print("\nSINGLE ELEMENT")
print(exponentialSearch([999999999], 999999999))
print(exponentialSearch([999999999], 1))

print("\nTWO ELEMENTS")
print(exponentialSearch([10, 20], 10))
print(exponentialSearch([10, 20], 20))
print(exponentialSearch([10, 20], 15))

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

print(exponentialSearch(largeVals, Int.min))
print(exponentialSearch(largeVals, 0))
print(exponentialSearch(largeVals, Int.max))
print(exponentialSearch(largeVals, 123))

print("\nDUPLICATES")
let dup = [7, 7, 7, 7, 7, 7, 7]
print(exponentialSearch(dup, 7))
print(exponentialSearch(dup, 8))

print("\nNEGATIVE NUMBERS")
let neg = [-50, -20, -10, -5, -1]
print(exponentialSearch(neg, -10))
print(exponentialSearch(neg, -51))

print("\nLARGE ARRAY")
var big: [Int] = []
for i in 0..<10000 {
    big.append(i * 3)
}

print(exponentialSearch(big, 0))
print(exponentialSearch(big, 3 * 5000))
print(exponentialSearch(big, 3 * 9999))
print(exponentialSearch(big, 1234567))