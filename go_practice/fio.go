/**
* Go : File I/O
 */

package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
	//"sort"
	//"strconv"
	//"strings"
)

func main() {
	file, err := os.Create("stamp.txt")

	if err != nil {
		log.Fatal(err)
	}

	file.WriteString("This is a placeHolder")
	file.Close()

	stream, err := ioutil.ReadFile("stamp.txt")

	if err != nil {
		log.Fatal(err)
	}

	rstr := string(stream)

	fmt.Println(rstr)
}
