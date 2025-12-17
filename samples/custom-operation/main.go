// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"encoding/json"
	"log/slog"
	"os"
	"strings"

	custom_sdk "custom-operation/custom-sdk"
	"custom-operation/services-api/pkg/service/custom"
)

// parseSlogLevel converts string log level to slog.Level
func parseSlogLevel(levelStr string) slog.Level {
	switch strings.ToLower(levelStr) {
	case "debug":
		return slog.LevelDebug
	case "info":
		return slog.LevelInfo
	case "warn", "warning":
		return slog.LevelWarn
	case "error", "fatal", "panic":
		return slog.LevelError
	default:
		return slog.LevelInfo
	}
}

func main() {
	// Initialize default slog logger
	logLevel := os.Getenv("LOG_LEVEL")
	if logLevel == "" {
		logLevel = "info"
	}

	slogLevel := parseSlogLevel(logLevel)
	opts := &slog.HandlerOptions{
		Level: slogLevel,
	}
	handler := slog.NewJSONHandler(os.Stdout, opts)
	logger := slog.New(handler)
	slog.SetDefault(logger)

	// Arrange - call custom service client (wrapper)
	CustomService := &custom.CustomService{
		Client: custom_sdk.NewClientWithBasePath("www.googleapis.com", ""),
	}

	// Execute - call the custom search endpoint
	limit := int64(1)
	ok, err := CustomService.CustomSearch(&custom_sdk.CustomSearchParams{
		Cx:   os.Getenv("CX"),
		Num:  &limit,
		Q:    "query",
		Safe: "off",
		Key:  os.Getenv("KEY"),
	})
	if err != nil {
		slog.Error("unable to call the custom service", "error", err)

		return
	}

	// Result
	val, err := json.MarshalIndent(ok, "", "    ")
	if err != nil {
		slog.Error("unable to marshal the response", "error", err)

		return
	}

	slog.Info("successfully invoked custom service", "response", string(val))
}
