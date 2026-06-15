package main

import "fmt"

/**
 * Bubble Sort is the simplest sorting algorithm that works by repeatedly
 * swapping adjacent elements if they are in the wrong order.
 *
 * It repeatedly passes through the array until no swaps are needed.
 *
 * param []int arr The slice of integers to sort
 *
 * return []int The sorted slice in ascending order
 *
 * Best Case:    O(n)
 * Worst Case:   O(n^2)
 * Average Case: O(n^2)
 * Space Complexity: O(1)
 */

func bubbleSort(arr []int) []int {
	n := len(arr)

	for i := 0; i < n-1; i++ {
		swapped := false

		for j := 0; j < n-i-1; j++ {
			if arr[j] > arr[j+1] {
				arr[j], arr[j+1] = arr[j+1], arr[j]
				swapped = true
			}
		}

		if !swapped {
			break
		}
	}

	return arr
}

func main() {
	// 1. EMPTY ARRAY
	empty := []int{}

	fmt.Println("Empty array tests:")
	fmt.Println(bubbleSort(empty))

	// 2. SINGLE ELEMENT
	one := []int{999999999}

	fmt.Println("\nSingle element tests:")
	fmt.Println(bubbleSort(one))

	// 3. TWO ELEMENTS
	two := []int{20, 10}

	fmt.Println("\nTwo elements tests:")
	fmt.Println(bubbleSort(two))

	// 4. ALREADY SORTED
	sorted := []int{1, 2, 3, 4, 5, 6, 7}

	fmt.Println("\nAlready sorted tests:")
	fmt.Println(bubbleSort(sorted))

	// 5. REVERSE SORTED
	reverse := []int{7, 6, 5, 4, 3, 2, 1}

	fmt.Println("\nReverse sorted tests:")
	fmt.Println(bubbleSort(reverse))

	// 6. RANDOM VALUES
	random := []int{64, 34, 25, 12, 22, 11, 90}

	fmt.Println("\nRandom values tests:")
	fmt.Println(bubbleSort(random))

	// 7. DUPLICATES
	duplicates := []int{5, 1, 5, 3, 5, 2, 5}

	fmt.Println("\nDuplicate values tests:")
	fmt.Println(bubbleSort(duplicates))

	// 8. ALL SAME VALUES
	sameValues := []int{7, 7, 7, 7, 7}

	fmt.Println("\nAll same values tests:")
	fmt.Println(bubbleSort(sameValues))

	// 9. NEGATIVE VALUES
	negativeVals := []int{-5, -1, -10, -3, -2}

	fmt.Println("\nNegative values tests:")
	fmt.Println(bubbleSort(negativeVals))

	// 10. MIXED POSITIVE AND NEGATIVE
	mixedVals := []int{3, -1, 4, -5, 0, 2}

	fmt.Println("\nMixed values tests:")
	fmt.Println(bubbleSort(mixedVals))

	// 11. LARGE INTEGERS
	largeVals := []int{-2147483648, 2147483647, 0, 1000000000, -1000000000}

	fmt.Println("\nLarge integer tests:")
	fmt.Println(bubbleSort(largeVals))

	// 12. MANY DUPLICATES
	manyDuplicates := []int{4, 2, 4, 1, 4, 3, 4, 0, 4}

	fmt.Println("\nMany duplicates tests:")
	fmt.Println(bubbleSort(manyDuplicates))

	// 13. MIXED ORDER
	mixedOrder := []int{100, 1, 50, 2, 75, 3, 25}

	fmt.Println("\nMixed order tests:")
	fmt.Println(bubbleSort(mixedOrder))
}
