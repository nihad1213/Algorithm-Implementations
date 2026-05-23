package main

import (
	"fmt"
)

/**
 * Binary search is a searching algorithm that find position of
 * a specific value within a sorted array. Instead of searching
 * every item one by one it repeatedly cuts the search area in
 * half.
 *
 * param []int arr - the array to search through
 * param int target - the value to search for
 * return int The index of the target value, or -1 if not found
 *
 * Best Case: O(1)
 * Worst Case: O(log n)
 * Average Case: O(log n)
 * Space Complexity: O(1)
 */

func binarySearchGo(arr []int, target int) int {
	left := 0
	right := len(arr) - 1

	for left <= right {
		mid := left + (right-left)/2

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

func main() {

	fmt.Println("EMPTY ARRAY")
	fmt.Println(binarySearchGo([]int{}, 10))

	fmt.Println("\nSINGLE ELEMENT")
	fmt.Println(binarySearchGo([]int{999999999}, 999999999))
	fmt.Println(binarySearchGo([]int{999999999}, 1))

	fmt.Println("\nTWO ELEMENTS")
	fmt.Println(binarySearchGo([]int{10, 20}, 10))
	fmt.Println(binarySearchGo([]int{10, 20}, 20))
	fmt.Println(binarySearchGo([]int{10, 20}, 15))

	fmt.Println("\nLARGE INTEGERS")
	largeVals := []int{
		-2147483648,
		-1000000000,
		-500,
		0,
		500,
		1000000000,
		2147483647,
	}

	fmt.Println(binarySearchGo(largeVals, -2147483648))
	fmt.Println(binarySearchGo(largeVals, 0))
	fmt.Println(binarySearchGo(largeVals, 2147483647))
	fmt.Println(binarySearchGo(largeVals, 123))

	fmt.Println("\nDUPLICATES")
	dup := []int{7, 7, 7, 7, 7, 7}
	fmt.Println(binarySearchGo(dup, 7))
	fmt.Println(binarySearchGo(dup, 8))

	fmt.Println("\nNEGATIVE NUMBERS")
	neg := []int{-50, -20, -10, -5, -1}
	fmt.Println(binarySearchGo(neg, -10))
	fmt.Println(binarySearchGo(neg, -51))

	fmt.Println("\nLARGE ARRAY")
	big := make([]int, 100000)
	for i := 0; i < 100000; i++ {
		big[i] = i * 3
	}

	fmt.Println(binarySearchGo(big, 0))
	fmt.Println(binarySearchGo(big, 3*50000))
	fmt.Println(binarySearchGo(big, 123456789))
}