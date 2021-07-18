package main

import "fmt"

func main() {
	var src string = `package main

import "fmt"

func main() {
	var src string = %c%s%c
	fmt.Printf(src, 96, src, 96)
}
`
	fmt.Printf(src, 96, src, 96)
}
