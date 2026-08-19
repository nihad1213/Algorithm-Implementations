package main

import ("fmt")

func ownStrrev(str string) string {
	runes := []rune(str)
	length := len(runes)
	
	for i := 0; i < length/2; i++ {
		runes[i], runes[length-1-i] = runes[length-1-i], runes[i]
	}

	return string(runes);
}

func main() {
	fmt.Println(ownStrrev("Nihad"));
}