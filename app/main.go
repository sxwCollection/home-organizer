package main

import (
	"database/sql"
	_ "github.com/mattn/go-sqlite3"
	"log"
	"net/http"
)

func main() {

	c, e := sql.Open("sqlite3", "./app.db")
	if e != nil {
		log.Fatal(e)
	}
	log.Println(c)
	srv := http.Server{
		Addr:    ":8080",
		Handler: routers(),
	}
	log.Println("listening on 8080")
	srv.ListenAndServe()
}
