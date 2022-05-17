// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"log"
	"net/http"
	"os"

	"github.com/sirupsen/logrus"

	logger "github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/log"
)

type CustomTransport struct {
	inner          http.RoundTripper
	UserAgent      string
	XAmazonTraceID string
	nums           int
}

func SetHeader(inner http.RoundTripper, userAgent, xAmazonTraceID string) http.RoundTripper {
	return &CustomTransport{
		inner:          inner,
		UserAgent:      userAgent,
		XAmazonTraceID: xAmazonTraceID,
		nums:           5,
	}
}

func (c *CustomTransport) RoundTrip(r *http.Request) (*http.Response, error) {
	r.Header.Add("User-Agent", c.UserAgent)
	r.Header.Add("X-Amzn-Trace-Id", c.XAmazonTraceID)

	// http retry
	for i := 0; i < c.nums; i++ {
		log.Println("Attempt: ", i+1)
		resp, err := c.inner.RoundTrip(r)
		if resp != nil && err == nil {
			log.Printf("Retry error %v\n", resp)
		}
		log.Println("Retrying again...")
	}

	// enabling log
	if os.Getenv("ENABLE_LOG") == "true" {
		// logger request
		logrus.Infof("Request: %v", logger.Request(r))

		// logger response
		res, err := c.inner.RoundTrip(r)
		if err != nil {
			logrus.Error("failed to use the RoundTrip method")
		}
		logrus.Infof("Response: %v", logger.Response(res))

		return res, nil
	}

	return c.inner.RoundTrip(r)
}
