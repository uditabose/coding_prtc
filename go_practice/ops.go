/**
* Go : operators
 */

package main

import "fmt"

func main() {

	fmt.Println("Hello operators")

	fmt.Println("true && false = ", true && false)
	fmt.Println("true || false = ", true || false)
	fmt.Println("!true  = ", !true)

	i := 1
	for i <= 10 {
		fmt.Println(i)
		i++ // i = i + 1
	}

	for j := 0; j < 5; j++ {
		fmt.Println(j)
	}

	age := 35

	if age >= 18 {
		fmt.Println("you are an adult")
	} else if age >= 40 {
		fmt.Println("you are old")
	} else {
		fmt.Println("you are a CHILD")
	}

	age = 17

	switch age {
	case 18:
		fmt.Println("you are an adult")
	case 40:
		fmt.Println("you are an adult")
	default:
		fmt.Println("you are a CHILD")
	}
}
