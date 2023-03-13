// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"encoding/json"
	"os"

	custom_sdk "custom-operation/custom-sdk"
	"custom-operation/services-api/pkg/service/custom"
	"github.com/sirupsen/logrus"
)

func main() {
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
		logrus.Errorf("unable to call the custom service: %s", err.Error())

		return
	}

	// Result
	val, err := json.MarshalIndent(ok, "", "    ")
	if err != nil {
		logrus.Errorf("unable to marshal the response: %s", err.Error())

		return
	}

	logrus.Printf("successfully invoke the custom service: %s", val)
}
