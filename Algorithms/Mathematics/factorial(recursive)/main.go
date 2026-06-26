package main

import "fmt"

/**
 * Calculates the factorial of a number using recursion.
 * The factorial of a non-negative integer n is the product
 * of all positive integers less than or equal to n.
 *
 * param int n The non-negative integer whose factorial is to be calculated
 *
 * return int The factorial of the given number
 * return error Non-nil if n is negative
 *
 * Best Case:    O(1)
 * Worst Case:   O(n)
 * Average Case: O(n)
 * Space Complexity: O(n)
 */
func factorial(n int) (int, error) {
	if n < 0 {
		return 0, fmt.Errorf("factorial is undefined for negative numbers")
	}

	if n == 0 {
		return 1, nil
	}

	result, err := factorial(n - 1)
	if err != nil {
		return 0, err
	}

	return n * result, nil
}

func main() {
	result, err := factorial(12)
	if err != nil {
		fmt.Println(err)
		return
	}

	fmt.Println(result)
}