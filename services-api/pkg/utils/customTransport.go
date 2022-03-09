// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"net/http"

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

func SetUserAgent(inner http.RoundTripper, userAgent string) http.RoundTripper {
	return &customTransport{
		inner:     inner,
		UserAgent: userAgent,
	}
}

func SetXAmznTraceId(inner http.RoundTripper, xAmznTraceId string) http.RoundTripper {
	return &customTransport{
		inner:          inner,
		XAmazonTraceId: xAmznTraceId,
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

	// logger request
	logrus.Infof("Request: %s", logger.LogRequest(r))

	// logger response
	res, err := c.inner.RoundTrip(r)
	if err != nil {
		logrus.Error("failed to use the RoundTrip method")
	}
	logrus.Infof("Response: %s", logger.LogResponse(res))

	return res, nil
}
