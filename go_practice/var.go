/**
* Go : variables
 */

package main

import "fmt"

func main() {
	fmt.Println("Hello variables")

	var age int = 40
	var flNum float64 = 1.134
	randNum := 1

	fmt.Println(age, " # ", flNum, " * ", randNum)

	var numOne = 1.000
	var num99 = 0.9999
	fmt.Println("Sum = ", numOne+num99)

	const pi = 3.14159265

	var myName string = "Papa Bose"

	fmt.Println(myName + " is alright")

	//var isOverForty bool = true

	fmt.Printf("%f3 \n", pi)

}
