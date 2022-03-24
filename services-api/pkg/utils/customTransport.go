// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"net/http"
	"os"

	"github.com/sirupsen/logrus"

	logger "github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/log"
)

func SetHeader(inner http.RoundTripper, userAgent, xAmazonTraceId string) http.RoundTripper {
	return &customTransport{
		inner:          inner,
		UserAgent:      userAgent,
		XAmazonTraceId: xAmazonTraceId,
	}
}

type customTransport struct {
	inner          http.RoundTripper
	UserAgent      string
	XAmazonTraceId string
}

func (c *customTransport) RoundTrip(r *http.Request) (*http.Response, error) {
	r.Header.Add("User-Agent", c.UserAgent)
	r.Header.Add("X-Amzn-Trace-Id", c.XAmazonTraceId)

	// enabling log
	if os.Getenv("ENABLE_LOG") == "true" {
		// logger request
		logrus.Infof("Request: %v", logger.LogRequest(r))

		// logger response
		res, err := c.inner.RoundTrip(r)
		if err != nil {
			logrus.Error("failed to use the RoundTrip method")
		}
		logrus.Infof("Response: %v", logger.LogResponse(res))
		return res, nil
	}
	return c.inner.RoundTrip(r)
}
