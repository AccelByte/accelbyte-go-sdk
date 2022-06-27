// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"net/http"
	"os"

	"github.com/sirupsen/logrus"
)

type CustomTransport struct {
	inner http.RoundTripper
}

func SetLogger(inner http.RoundTripper) http.RoundTripper {
	return &CustomTransport{
		inner: inner,
	}
}

func (c *CustomTransport) RoundTrip(r *http.Request) (*http.Response, error) {
	// enabling log
	if os.Getenv("ENABLE_LOG") == "true" {
		// logger request
		logrus.Infof("LogRequest: %v", LogRequest(r))

		// logger response
		res, err := c.inner.RoundTrip(r)
		if err != nil {
			logrus.Error("failed to use the RoundTrip method")
		}
		logrus.Infof("Response: %v", LogResponse(res))

		return res, nil
	}

	return c.inner.RoundTrip(r)
}
