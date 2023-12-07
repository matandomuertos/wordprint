// wordprint.go

package main

import (
	"fmt"
	"os"
)

func main() {
	// Check if there is at least one command-line argument
	if len(os.Args) < 2 {
		fmt.Println("Usage: wordprint <word>")
		return
	}

	// Get the word from the command-line argument
	word := os.Args[1]

	// Print the word to the terminal
	fmt.Println("You wrote:", word)
}
