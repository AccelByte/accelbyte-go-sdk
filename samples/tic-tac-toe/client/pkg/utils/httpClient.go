// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"bytes"
	"net/http"
	"time"

	"github.com/sirupsen/logrus"
)

func GetClient() http.Client {
	return http.Client{
		Timeout: time.Second * 10,
	}
}

func SimpleHTTPCall(client http.Client, endpoint, httpMethod, authorizationValue string, requestBody []byte) (*http.Response, error) {
	req, err := http.NewRequest(httpMethod, endpoint, bytes.NewReader(requestBody))
	if err != nil {
		logrus.Error("invalid request")

		return nil, err
	}
	req.Header.Set("Content-Type", "application/json")
	req.Header.Set("Authorization", authorizationValue)
	resp, err := client.Do(req)
	if err != nil {
		logrus.Error("http call error")

		return nil, err
	}

	return resp, nil
}
