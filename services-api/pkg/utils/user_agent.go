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
const UserAgentSDK = "AccelByteGoSDK/v0.50.0"

func UserAgentGen() string {
	appName := os.Getenv("APP_CLIENT_NAME")
	if len(appName) > 0 {
		return fmt.Sprintf("%v (%v)", UserAgentSDK, appName)
	}

	return UserAgentSDK
}
