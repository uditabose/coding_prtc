/**
* Go : Structs
 */

package main

import "fmt"
import "math"

func main() {
	rect := Rectangle{x: 0, y: 50, h: 30, w: 10}
	fmt.Println("Rectangle", rect)
	fmt.Println("Area", rectArea(rect))

	r := Rectangle{x: 10, y: 20, h: 10, w: 20}
	c := Circle{r: 10}

	fmt.Println("Area", getArea(r))
	fmt.Println("Area", getArea(c))

}

type Shape interface {
	area() float64
}

type Rectangle struct {
	x float64
	y float64
	h float64
	w float64
}

type Circle struct {
	r float64
}

func rectArea(rect Rectangle) float64 {
	return rect.h * rect.w
}

func (r Rectangle) area() float64 {
	return r.h * r.w
}

func (c Circle) area() float64 {
	return math.Pi * math.Pow(c.r, 2)
}

func getArea(shape Shape) float64 {
	return shape.area()
}
