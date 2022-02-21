package models

import "os"

var (
	ClientId       = os.Getenv("APP_CLIENT_ID")
	ClientSecret   = os.Getenv("APP_CLIENT_SECRET")
	JusticeBaseURL = os.Getenv("JUSTICE_BASE_URL")
	ClientAppName  = os.Getenv("APP_CLIENT_NAME")
)
