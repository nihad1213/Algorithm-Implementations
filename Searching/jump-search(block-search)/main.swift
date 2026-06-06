import Foundation

/**
 Jump Search (also known as block search) is a searching algorithm for
 sorted arrays that checks fewer elements than a linear
 search by jumping ahead by fixed steps.

 ## Parameters
 - arr: The sorted array to search through
 - target: The value to search for

 ## Returns
 - The index of the target value if found, otherwise -1

 ## Complexity
 - Best Case:    O(1)
 - Worst Case:   O(sqrt(n))
 - Average Case: O(sqrt(n))
 - Space Complexity: O(1)
 */

func jumpSearch(_ arr: [Int], _ target: Int) -> Int {
    let size = arr.count
    if size == 0 { return -1 }

    let step = Int(Double(size).squareRoot())
    var prev = 0

    while prev < size && arr[prev] < target {
        let next = min(prev + step, size)

        if arr[next - 1] >= target { break }

        prev = next

        if prev >= size { return -1 }
    }

    let end = min(prev + step, size)

    for i in prev..<end {
        if arr[i] == target { return i }
        if arr[i] > target  { return -1 }
    }

    return -1
}

// MARK: - TEST CASES

print("EMPTY ARRAY")
print(jumpSearch([], 10))

print("\nSINGLE ELEMENT")
print(jumpSearch([999999999], 999999999))
print(jumpSearch([999999999], 1))

print("\nTWO ELEMENTS")
print(jumpSearch([10, 20], 10))
print(jumpSearch([10, 20], 20))
print(jumpSearch([10, 20], 15))

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

print(jumpSearch(largeVals, Int.min))
print(jumpSearch(largeVals, 0))
print(jumpSearch(largeVals, Int.max))
print(jumpSearch(largeVals, 123))

print("\nDUPLICATES")
let dup = [7, 7, 7, 7, 7, 7, 7]
print(jumpSearch(dup, 7))
print(jumpSearch(dup, 8))

print("\nNEGATIVE NUMBERS")
let neg = [-50, -20, -10, -5, -1]
print(jumpSearch(neg, -10))
print(jumpSearch(neg, -51))

print("\nLARGE ARRAY")
var big: [Int] = []
for i in 0..<10000 {
    big.append(i * 3)
}

print(jumpSearch(big, 0))
print(jumpSearch(big, 3 * 5000))
print(jumpSearch(big, 3 * 9999))
print(jumpSearch(big, 1234567))