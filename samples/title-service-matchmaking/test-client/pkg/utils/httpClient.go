package utils

import (
	"net/http"
	"time"
)

func GetClient() http.Client {
	return http.Client{
		Timeout: time.Second *10,
	}
}