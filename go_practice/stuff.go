/**
* Go : Other stuff
 */

package main

import (
	"fmt"
	//"io/ioutil"
	//"log"
	//"os"
	//"sort"
	"strconv"
	//"strings"
)

func main() {
	i := 5
	f := 10.5
	s := "100"
	s2 := "250.5"

	fmt.Println(float64(i))
	fmt.Println(int(f))

	newInt, _ := strconv.ParseInt(s, 0, 64)
	fmt.Println(newInt)

	newF, _ := strconv.ParseFloat(s2, 64)
	fmt.Println(newF)

}
