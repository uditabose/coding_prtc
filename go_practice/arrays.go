/**
* Go : arrays
 */

package main

import "fmt"

func main() {
	var nums [4]float64
	nums[0] = 12.9
	nums[1] = 129.9
	nums[2] = 1.29
	nums[3] = 129.0

	fmt.Println(nums[3])

	nums1 := [3]float64{1, 2, 3}
	for i, value := range nums1 {
		fmt.Println(value, i)
	}

	for _, value := range nums1 {
		fmt.Println(value)
	}
}
