package main

import "fmt"


func linearSearch(arr []int, target int) int {
	for i, v := range arr {
		if v == target {
			return i
		}
	}
	return -1
}

func main() {
	fmt.Println(linearSearch([]int{1, 2, 3, 4, 5}, 3))
	fmt.Println(linearSearch([]int{1, 2, 3, 4, 5}, 6))
	fmt.Println(linearSearch([]int{}, 1))
	fmt.Println(linearSearch([]int{1, 2, 3, 4, 5}, 1))
	fmt.Println(linearSearch([]int{1, 2, 3, 4, 5}, 5))
}
