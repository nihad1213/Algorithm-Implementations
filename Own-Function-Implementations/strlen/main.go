package main

import "fmt"

func own_strlen(s string) int {
	count := 0

	for s != "" {
		count++
		s = s[1:]
	}

	return count
}

func main() {
	fmt.Println(own_strlen("Nihad"))       // Expected: 5
	fmt.Println(own_strlen("Hello World")) // Expected: 11
	fmt.Println(own_strlen("a"))           // Expected: 1

	// Edge Cases
	fmt.Println(own_strlen(""))           // Expected: 0
	fmt.Println(own_strlen(" "))          // Expected: 1
	fmt.Println(own_strlen("   "))        // Expected: 3
	fmt.Println(own_strlen("1234567890")) // Expected: 10
	fmt.Println(own_strlen("!\n\t\r"))    // Expected: 4

	// Multi-byte / UTF-8 Behavior (byte count)
	fmt.Println(own_strlen("😊"))          // Expected: 4
	fmt.Println(own_strlen("Bakı"))        // Expected: 5
}
