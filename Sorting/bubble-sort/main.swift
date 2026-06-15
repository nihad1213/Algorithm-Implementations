import Foundation

/**
 Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping
 adjacent elements if they are in the wrong order.

 It repeatedly passes through the array until no swaps are needed.

 ## Parameters
 - arr: The array of integers to sort

 ## Returns
 - A sorted array in ascending order

 ## Complexity
 - Best Case:    O(n)
 - Worst Case:   O(n^2)
 - Average Case: O(n^2)
 - Space Complexity: O(1)
 */

func bubbleSort(_ arr: [Int]) -> [Int] {
    var arr = arr
    let n = arr.count

    if n <= 1 { return arr }

    for i in 0..<n - 1 {
        var swapped = false

        for j in 0..<n - i - 1 {
            if arr[j] > arr[j + 1] {
                let temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
                swapped = true
            }
        }

        if !swapped {
            break
        }
    }

    return arr
}

// MARK: - TEST CASES

print("EMPTY ARRAY")
print(bubbleSort([]))

print("\nSINGLE ELEMENT")
print(bubbleSort([999999999]))

print("\nTWO ELEMENTS")
print(bubbleSort([20, 10]))
print(bubbleSort([10, 20]))

print("\nALREADY SORTED")
print(bubbleSort([1, 2, 3, 4, 5, 6, 7]))

print("\nREVERSE SORTED")
print(bubbleSort([7, 6, 5, 4, 3, 2, 1]))

print("\nRANDOM VALUES")
print(bubbleSort([64, 34, 25, 12, 22, 11, 90]))

print("\nDUPLICATES")
print(bubbleSort([5, 1, 5, 3, 5, 2, 5]))

print("\nALL SAME VALUES")
print(bubbleSort([7, 7, 7, 7, 7]))

print("\nNEGATIVE VALUES")
print(bubbleSort([-5, -1, -10, -3, -2]))

print("\nMIXED VALUES")
print(bubbleSort([3, -1, 4, -5, 0, 2]))

print("\nLARGE INTEGERS")
print(bubbleSort([
    Int.min,
    -1000000000,
    0,
    500,
    1000000000,
    Int.max
]))

print("\nLARGE ARRAY")
var big: [Int] = []
for i in 0..<10000 {
    big.append(i * 3)
}

print(bubbleSort(big.prefix(20).map { $0 }))
print(bubbleSort(big))