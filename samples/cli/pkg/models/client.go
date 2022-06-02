// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package models

import "os"

var (
	ClientId       = os.Getenv("AB_CLIENT_ID")
	ClientSecret   = os.Getenv("AB_CLIENT_SECRET")
	JusticeBaseURL = os.Getenv("AB_BASE_URL")
	ClientAppName  = os.Getenv("AB_APP_NAME")
)
