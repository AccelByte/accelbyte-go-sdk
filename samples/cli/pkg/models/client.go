// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package models

import "os"

var (
	ClientId       = os.Getenv("APP_CLIENT_ID")
	ClientSecret   = os.Getenv("APP_CLIENT_SECRET")
	JusticeBaseURL = os.Getenv("JUSTICE_BASE_URL")
	ClientAppName  = os.Getenv("APP_CLIENT_NAME")
)
