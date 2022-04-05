// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"net/http"
	"time"
)

func GetClient() http.Client {
	return http.Client{
		Timeout: time.Second * 10,
	}
}
