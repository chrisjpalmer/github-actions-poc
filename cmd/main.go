package main

import (
	"fmt"

	"github.com/chrisjpalmer/github-actions-poc/hello"
)

func main() {
	s := hello.Sayer{}
	fmt.Println(s.Say())
}
