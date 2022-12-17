package main

import (
	"fmt"
	"net/http"
)

func main() {
	fmt.Println("Hello, world")
	http.HandleFunc("/", func(writer http.ResponseWriter, request *http.Request) {
		fmt.Fprintln(writer, "Hello, world")
	})
	http.ListenAndServe(":4000", nil)
}
