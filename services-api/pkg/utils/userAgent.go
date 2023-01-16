// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"fmt"
	"os"
)

// UserAgentSDK
// attention: this var will be incremented automatically on `Makefile version` using regex
// therefore the patterns need to comply
var UserAgentSDK = "AccelByteGoSDK/v0.36.0"

func UserAgentGen() string {
	userAgent := "AccelByteGoSDK/v0.35.0"
	appName := os.Getenv("APP_CLIENT_NAME")

	if len(appName) > 0 {
		userAgent = fmt.Sprintf("%v (%v)", userAgent, appName)
	}

	return userAgent
}
