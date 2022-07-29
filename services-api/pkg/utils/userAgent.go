// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"fmt"
	"os"
)

func UserAgentGen() string {
	userAgent := "AccelByteGoSDK/v0.24.0"
	appName := os.Getenv("APP_CLIENT_NAME")

	if len(appName) > 0 {
		userAgent = fmt.Sprintf("%v (%v)", userAgent, appName)
	}

	return userAgent
}
