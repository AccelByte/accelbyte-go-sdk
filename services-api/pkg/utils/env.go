// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"log"
	"os"
	"strconv"
	"time"
)

func GetEnv(key, fallback string) string {
	if value, ok := os.LookupEnv(key); ok {
		return value
	}

	return fallback
}

func GetRolesExpirationTime() time.Duration {
	if os.Getenv("RolesCacheExpirationTime") != "" {
		expirationTimeString := os.Getenv("RolesCacheExpirationTime")
		expirationTimeSeconds, err := strconv.Atoi(expirationTimeString)
		if err != nil {
			log.Printf("failed to convert the expiration time")

			return time.Hour
		}
		expirationTime := time.Duration(expirationTimeSeconds) * time.Second

		return expirationTime
	}

	return time.Hour
}
