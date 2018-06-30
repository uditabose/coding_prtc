/**
* Go : Slices
 */

package main

import "fmt"

func main() {
	slice := []int{5, 4, 3, 2, 1}
	pSlice := slice[3:5]

	mSlice := make([]int, 5, 10)
	copy(mSlice, slice)
	fmt.Println("pSlice[0] =", pSlice[0])
	fmt.Println("part =", slice[:2])
	fmt.Println("part =", slice[2:])

	fmt.Println("mSlice =", mSlice[0])

	mSlice = append(mSlice, 0, -1)

	fmt.Println("mSlice =", mSlice[6])

}
