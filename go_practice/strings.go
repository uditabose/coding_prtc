/**
* Go : String ops
 */

package main

import (
	"fmt"
	//"io/ioutil"
	//"log"
	//"os"
	"sort"
	//"strconv"
	"strings"
)

func main() {
	str := "Hello World"
	fmt.Println(str)

	fmt.Println(strings.Contains(str, "lo"))
	fmt.Println(strings.Index(str, "lo"))
	fmt.Println(strings.Count(str, "l"))
	fmt.Println(strings.Replace(str, "l", "x", 3))

	csv := "1,2,3,4,5,6"
	fmt.Println(strings.Split(csv, ","))

	lets := []string{"d", "b", "f"}
	sort.Strings(lets)

	fmt.Println(lets)

	letsJ := strings.Join(lets, "-")
	fmt.Println(letsJ)
}
