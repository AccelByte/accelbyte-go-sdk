// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"net/http"

	"github.com/sirupsen/logrus"

	logger "github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/log"
)

func SetUserAgent(inner http.RoundTripper, userAgent string) http.RoundTripper {
	return &customTransport{
		inner:     inner,
		UserAgent: userAgent,
	}
}

func SetXAmznTraceId(inner http.RoundTripper, xAmazonTraceId string) http.RoundTripper {
	return &customTransport{
		inner:          inner,
		XAmazonTraceId: xAmazonTraceId,
	}
}

type customTransport struct {
	inner          http.RoundTripper
	UserAgent      string
	XAmazonTraceId string
}

func (c *customTransport) RoundTrip(r *http.Request) (*http.Response, error) {
	r.Header.Set("User-Agent", c.UserAgent)
	r.Header.Set("X-Amzn-Trace-Id", c.XAmazonTraceId)

	logrus.Infof("Request: %s", logger.LogRequest(r))

	res, err := c.inner.RoundTrip(r)
	if err != nil {
		logrus.Error("failed to use the RoundTrip method")
	}
	logrus.Infof("Response: %s", logger.LogResponse(res))

	return c.inner.RoundTrip(r)
}
