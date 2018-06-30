/**
* Go : go routines
 */

package main

import (
	"fmt"
	"strconv"
	"time"
)

var pizzaNum = 0
var pizzaName = ""

func count(id int) {
	for i := 0; i < 10; i++ {
		fmt.Println(id, ":", i)

		time.Sleep(time.Millisecond * 1000)
	}
}

func main() {
	for i := 0; i < 10; i++ {
		go count(i)
	}

	time.Sleep(time.Millisecond * 12000)

	stringChan := make(chan string)

	for i := 0; i < 3; i++ {
		go mkDo(stringChan)
		go mkSauce(stringChan)
		go addTop(stringChan)
		time.Sleep(time.Millisecond * 5000)
	}
}

func mkDo(stringChan chan string) {
	pizzaNum++
	pizzaName = "Pizza #" + strconv.Itoa(pizzaNum)
	fmt.Println("Make dough", pizzaName)

	stringChan <- pizzaName
	time.Sleep(time.Millisecond * 10)
}

func mkSauce(stringChan chan string) {
	pizza := <-stringChan
	fmt.Println("Add sauce", pizza, " for toppings")

	stringChan <- pizzaName
	time.Sleep(time.Millisecond * 10)
}

func addTop(stringChan chan string) {
	pizza := <-stringChan
	fmt.Println("Add topping", pizza, " and ship")

	stringChan <- pizzaName
	time.Sleep(time.Millisecond * 10)
}
