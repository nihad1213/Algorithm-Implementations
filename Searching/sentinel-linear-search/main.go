package main

import "fmt"

/*
SentinelLinearSearch performs an optimized linear search using a sentinel value.

The algorithm reduces the number of comparisons by placing the target value
at the end of the slice as a sentinel, eliminating the need for boundary checks
during iteration.

Parameters:

	arr    []int - slice to search through
	target int   - value to search for

Returns:

	int - index of the target value, or -1 if not found

Complexity:

	Best Case:    O(1)
	Worst Case:   O(n)
	Average Case: O(n)
	Space:        O(1)
*/
func sentinelLinearSearch(arr []int, target int) int {
	n := len(arr)
	if n == 0 {
		return -1
	}

	last := arr[n-1]

	arr[n-1] = target

	i := 0
	for arr[i] != target {
		i++
	}

	arr[n-1] = last

	if i < n-1 || last == target {
		return i
	}

	return -1
}

func main() {
	fmt.Println(sentinelLinearSearch([]int{1, 2, 3, 4, 5}, 3))
	fmt.Println(sentinelLinearSearch([]int{1, 2, 3, 4, 5}, 6))
	fmt.Println(sentinelLinearSearch([]int{}, 1))
	fmt.Println(sentinelLinearSearch([]int{1, 2, 3, 4, 5}, 1))
	fmt.Println(sentinelLinearSearch([]int{1, 2, 3, 4, 5}, 5))
}
