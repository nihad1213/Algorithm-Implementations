/**
 Sentinel Linear Search is an optimized version of the linear search algorithm.
 It reduces the number of comparisons by placing a sentinel value at the end of the array.

 - Parameters:
    - array: The array to search through
    - target: The value to search for

 - Returns: The index of the target value, or -1 if not found

 ## Complexity
 - Best Case: O(1)
 - Worst Case: O(n)
 - Average Case: O(n)
 - Space Complexity: O(1)
 */

func sentinelLinearSearch(_ array: [Int], target: Int) -> Int {
    guard !array.isEmpty else {
        return -1
    }
    
    var arr = array
    let lastIndex = arr.count - 1
    let last = arr[lastIndex]
    
    arr[lastIndex] = target
    
    var i = 0
    while arr[i] != target {
        i += 1
    }
    
    arr[lastIndex] = last
    
    if i < lastIndex || last == target {
        return i
    }
    
    return -1
}

let arr1 = [1, 2, 3, 4, 5]
let arr2: [Int] = []
let arr3 = [1, 2, 3, 4, 5]
let arr4 = [1, 2, 3, 4, 5]

print(sentinelLinearSearch(arr1, target: 3))
print(sentinelLinearSearch(arr1, target: 6))
print(sentinelLinearSearch(arr2, target: 1))
print(sentinelLinearSearch(arr3, target: 1))
print(sentinelLinearSearch(arr4, target: 5))