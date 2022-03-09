// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"fmt"
	"os"
)

var userAgent string

func UserAgentGen() string {
	appName := os.Getenv("APP_CLIENT_NAME")
	if len(appName) > 0 {
		userAgent = fmt.Sprintf("AccelByteGoSDK/v0.12.0 (%v)", appName)
		return userAgent
	} else {
		userAgent = "AccelByteGoSDK/v0.12.0"
		return userAgent
	}
}
