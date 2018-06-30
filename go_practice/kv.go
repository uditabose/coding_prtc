/**
* Go : map, dict, key-value
 */

package main

import "fmt"

func main() {
	age := make(map[string]int)
	age["a"] = 1
	age["b"] = 2
	age["c"] = 20

	fmt.Println(age["b"])
	fmt.Println(len(age))
	delete(age, "c")
	fmt.Println(len(age))
}
