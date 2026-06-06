package main

import (
	"fmt"
	"math"
)

/**
 * Jump Search (also known as block search) is a searching algorithm for
 * sorted arrays that checks fewer elements than a linear
 * search by jumping ahead by fixed steps.
 *
 * param []int arr    The sorted array to search through
 * param int   target The value to search for
 *
 * return int The index of the target value, or -1 if not found
 *
 * Best Case:    O(1)
 * Worst Case:   O(sqrt(n))
 * Average Case: O(sqrt(n))
 * Space Complexity: O(1)
 */

func jumpSearch(arr []int, target int) int {
	size := len(arr)
	if size == 0 {
		return -1
	}

	step := int(math.Sqrt(float64(size)))
	prev := 0

	for prev < size && arr[prev] < target {
		next := prev + step

		if next > size {
			next = size
		}

		if arr[next-1] >= target {
			break
		}

		prev = next

		if prev >= size {
			return -1
		}
	}

	end := prev + step
	if end > size {
		end = size
	}

	for i := prev; i < end; i++ {
		if arr[i] == target {
			return i
		}
		if arr[i] > target {
			return -1
		}
	}

	return -1
}

func main() {
	// 1. EMPTY ARRAY
	empty := []int{}

	fmt.Println("Empty array tests:")
	fmt.Println(jumpSearch(empty, 10))

	// 2. SINGLE ELEMENT
	one := []int{999999999}

	fmt.Println("\nSingle element tests:")
	fmt.Println(jumpSearch(one, 999999999))
	fmt.Println(jumpSearch(one, 1))

	// 3. TWO ELEMENTS
	two := []int{10, 20}

	fmt.Println("\nTwo elements tests:")
	fmt.Println(jumpSearch(two, 10))
	fmt.Println(jumpSearch(two, 20))
	fmt.Println(jumpSearch(two, 15))

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
	fmt.Println(jumpSearch(largeVals, -2147483648))
	fmt.Println(jumpSearch(largeVals, 0))
	fmt.Println(jumpSearch(largeVals, 2147483647))
	fmt.Println(jumpSearch(largeVals, 123))

	// 5. LARGE ARRAY
	big := make([]int, 10000)

	for i := 0; i < 10000; i++ {
		big[i] = i * 3
	}

	fmt.Println("\nLarge array tests:")
	fmt.Println(jumpSearch(big, 0))
	fmt.Println(jumpSearch(big, 3*5000))
	fmt.Println(jumpSearch(big, 3*9999))
	fmt.Println(jumpSearch(big, 1234567))

	// 6. DUPLICATES
	dup := []int{7, 7, 7, 7, 7, 7, 7}

	fmt.Println("\nDuplicate values tests:")
	fmt.Println(jumpSearch(dup, 7))
	fmt.Println(jumpSearch(dup, 8))

	// 7. NEGATIVE NUMBERS
	negatives := []int{-50, -20, -10, -5, -1}

	fmt.Println("\nNegative numbers tests:")
	fmt.Println(jumpSearch(negatives, -10))
	fmt.Println(jumpSearch(negatives, -51))
}