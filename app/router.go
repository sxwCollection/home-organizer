package main

import "net/http"

func routers() http.Handler {
	mux := http.NewServeMux()
	mux.HandleFunc("GET /", getHome)
	return mux
}
