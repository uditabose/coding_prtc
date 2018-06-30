/**
* Go : Pointers
 */

package main

import "fmt"

func main() {
	x := 0

	changeXVal(x)

	fmt.Println(x)

	changePointer(&x)

	fmt.Println(x)
	fmt.Println("mem addr =", &x)
}

func changeXVal(x int) {
	x = 2
}

func changePointer(x *int) {
	*x = 2
}
