// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"fmt"
	"net/http"
	"os"
	"strconv"
	"time"

	"github.com/sirupsen/logrus"

	logger "github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/log"
)

type CustomTransport struct {
	inner          http.RoundTripper
	UserAgent      string
	XAmazonTraceID string
	Retries        int
}

func SetHeader(inner http.RoundTripper, userAgent, xAmazonTraceID string) http.RoundTripper {
	return &CustomTransport{
		inner:          inner,
		UserAgent:      userAgent,
		XAmazonTraceID: xAmazonTraceID,
		Retries:        5,
	}
}

func (c *CustomTransport) RoundTrip(r *http.Request) (*http.Response, error) {
	r.Header.Add("User-Agent", c.UserAgent)
	r.Header.Add("X-Amzn-Trace-Id", c.XAmazonTraceID)

	// http retry
	//var (
	//	duration time.Duration
	//	ctx      context.Context
	//	cancels  func()
	//)
	//if deadline, ok := r.Context().Deadline(); ok {
	//	duration = time.Until(deadline)
	//}
	//for i := 0; i < c.Retries; i++ {
	//	if duration > 0 {
	//		ctx, cancels = context.WithTimeout(context.Background(), duration)
	//		r = r.WithContext(ctx)
	//	}
	//	log.Println("Attempt: ", i+1)
	//	resp, err := c.inner.RoundTrip(r)
	//	if resp != nil && err == nil {
	//		log.Printf("Retries error %v\n", resp)
	//	}
	//	log.Println("Retrying again...")
	//}
	//defer cancels()

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

// Simple backoff interface
type Backoff interface {
	// Get the backoff duration
	Get(attempt uint) time.Duration
}

type exponentialBackoff struct {
	// The start duration to wait after the first Next() call
	Start time.Duration
	// The maximum duration to wait
	Max time.Duration
}

func NewExponentialBackoff(start time.Duration, max time.Duration) Backoff {
	return &exponentialBackoff{Start: start, Max: max}
}

func (b *exponentialBackoff) Get(attempt uint) time.Duration {
	d := b.Start
	for i := uint(0); i < attempt; i++ {
		d *= time.Duration(2)
		if d > b.Max {
			return b.Max
		}
	}
	return d
}

// Wraps Transport with retry logic as an http.RoundTripper.
type Retry struct {
	RetryCodes map[int]bool
	MaxTries   uint
	Backoff    Backoff
	Transport  http.RoundTripper
	Verbose    bool
	// Testing parameter used to sleep after each try according to the backoff, defaults to time.Sleep
	sleeper func(duration time.Duration)
}

// http.RoundTripper implementation
func (m Retry) RoundTrip(req *http.Request) (*http.Response, error) {
	// Setup the sleep method for test
	sleep := m.sleeper
	if sleep == nil {
		sleep = time.Sleep
	}
	var res *http.Response
	var err error
	// Retry logic: Retry up to maxTries, wait exponentially long (using the backoff). If status code is 429, wait according to the Retry-After header instead.
	for try := uint(0); try < m.MaxTries; try++ {
		res, err = m.Transport.RoundTrip(req)
		t := m.Backoff.Get(try) // time to wait for next retry
		// Do not try again if there was an error with the transport or the status code is not in the retryCodes
		if err != nil || res == nil || m.RetryCodes[res.StatusCode] == false {
			return res, err
		}
		// In case the api is rate-limited: t is updated to the Retry-After header
		if res.StatusCode == 429 {
			retryAfter := getRetryAfter(res.Header.Get("Retry-After"))
			if retryAfter != 0 {
				t = time.Duration(retryAfter) * time.Second
			}
		}
		// This is for test mainly
		if m.Verbose {
			fmt.Printf("Sleeping %v with code %v\n.", t, res.StatusCode)
		}
		// Wait and try again
		if try != m.MaxTries-1 {
			sleep(t) // TODO: FAIL early if the context deadline is exceeded
		}
	}
	return res, err
}

// returns 0 in case the header is empty or malformed, otherwise converts the string to an integer.
func getRetryAfter(headerValue string) int {
	// Note that due to the way atoi works we could simply return the integer value as it defaults to zero.
	if headerValue == "" {
		return 0
	}
	i, err := strconv.Atoi(headerValue)
	if err != nil {
		return 0
	}
	return i
}
