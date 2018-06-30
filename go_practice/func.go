/**
* Go : functions
 */

package main

import "fmt"

func main() {
	nums := []float64{1, 2, 3, 4, 5}

	fmt.Println("Sum : ", addThemUp(nums))

	n1, n2 := next2Vals(4)
	fmt.Println("Next : ", n1, n2)

	fmt.Println("Subtract : ", sub(1, 2, 3, 4, 5))

	nnum := 3

	dbNum := func() int {
		nnum *= 2
		return nnum
	}

	fmt.Println(dbNum())
	fmt.Println(dbNum())

	fmt.Println("Factorial : ", factorial(13))

	defer printTwo()
	printOne()

	fmt.Println(safeDiv(3, 0))
	fmt.Println(safeDiv(3, 2))

	demPanic()
}

func addThemUp(nums []float64) float64 {
	sum := 0.0

	for _, val := range nums {
		sum += val
	}

	return sum
}

func next2Vals(number int) (int, int) {
	return number + 1, number + 2
}

func sub(args ...int) int {
	finVal := 0

	for _, val := range args {
		finVal -= val
	}

	return finVal
}

func factorial(num int) int {
	if num == 0 {
		return 1
	}

	return num * factorial(num-1)
}

func printOne() {
	fmt.Println(1)
}

func printTwo() {
	fmt.Println(2)
}

func safeDiv(n1, n2 int) int {
	defer func() {
		fmt.Println(recover())
	}()

	sol := n1 / n2
	return sol
}

func demPanic() {
	defer func() {
		fmt.Println(recover())
	}()

	panic("PANIC")
}
