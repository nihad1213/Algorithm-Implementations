package main

import "fmt"

/**
 * Recursive linear search is a method for finding a specific target value within an array
 * by calling the same function repeatedly on smaller portions of the dataset until the target
 * is found or all elements are exhousted.
 *
 * param []int  arr The array search through
 * param int target The value search for
 * param int index The current position in the array
 *
 * return int The index of target value, or return -1 if not found
 *
 * Best Case: O(1)
 * Worst Case: O(n)
 * Average Case: O(n)
 * Space Complexity: O(n)
 */

func recursiveLinearSearch(arr []int, target int, index int) int {
	if index == len(arr) {
		return -1
	}

	if arr[index] == target {
		return index
	}

	return recursiveLinearSearch(arr, target, index + 1)
}


func main() {
	// 1. EMPTY ARRAY
	empty := []int{}

	fmt.Println("Empty array tests:")
	fmt.Println(recursiveLinearSearch(empty, 10, 0))

	// 2. SINGLE ELEMENT
	one := []int{999999999}

	fmt.Println("\nSingle element tests:")
	fmt.Println(recursiveLinearSearch(one, 999999999, 0))
	fmt.Println(recursiveLinearSearch(one, 1, 0))

	// 3. TWO ELEMENTS
	two := []int{10, 20}

	fmt.Println("\nTwo elements tests:")
	fmt.Println(recursiveLinearSearch(two, 10, 0))
	fmt.Println(recursiveLinearSearch(two, 20, 0))
	fmt.Println(recursiveLinearSearch(two, 15, 0))

	// 4. LARGE INTEGERS
	largeVals := []int{
		-2147483648,
		-1000000000,
		-500,
		0,
		500,
		1000000000,
		2147483647,
	}

	fmt.Println("\nLarge integer tests:")
	fmt.Println(recursiveLinearSearch(largeVals, -2147483648, 0))
	fmt.Println(recursiveLinearSearch(largeVals, 0, 0))
	fmt.Println(recursiveLinearSearch(largeVals, 2147483647, 0))
	fmt.Println(recursiveLinearSearch(largeVals, 123, 0))

	// 5. LARGE ARRAY (safe recursion size)
	big := make([]int, 500)

	for i := 0; i < 500; i++ {
		big[i] = i * 3
	}

	fmt.Println("\nLarge array tests:")
	fmt.Println(recursiveLinearSearch(big, 0, 0))
	fmt.Println(recursiveLinearSearch(big, 3*250, 0))
	fmt.Println(recursiveLinearSearch(big, 3*499, 0))
	fmt.Println(recursiveLinearSearch(big, 1234567, 0))

	// 6. DUPLICATES
	dup := []int{7, 7, 7, 7, 7, 7, 7}

	fmt.Println("\nDuplicate values tests:")
	fmt.Println(recursiveLinearSearch(dup, 7, 0))
	fmt.Println(recursiveLinearSearch(dup, 8, 0))

	// 7. NEGATIVE NUMBERS
	negatives := []int{-50, -20, -10, -5, -1}

	fmt.Println("\nNegative numbers tests:")
	fmt.Println(recursiveLinearSearch(negatives, -10, 0))
	fmt.Println(recursiveLinearSearch(negatives, -51, 0))
}
