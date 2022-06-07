// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"bytes"
	"io/ioutil"
	"net/http"
	"time"

	"github.com/sirupsen/logrus"
)

const (
	StartBackoff = 1 * time.Second
	MaxBackoff   = 5 * time.Second
	MaxTries     = 1
)

var RetryCodes = map[int]bool{
	422: true, // un-processable entity
	425: true, // server not ready
	500: true, // internal server error
	502: true, // bad gateway
	408: true, // request timeout error
}

// Backoff interface
type Backoff interface {
	// Get delay's duration
	Get(attempt uint) time.Duration
}

type exponentialBackoff struct {
	// The start duration to delay after the first Next() call
	Start time.Duration
	// The maximum duration of delay
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

type constantBackoff struct {
	Duration time.Duration
}

func NewConstantBackoff(duration time.Duration) Backoff {
	return &constantBackoff{Duration: duration}
}

func (b *constantBackoff) Get(attempt uint) time.Duration {
	return b.Duration
}

// Retry struct with http.RoundTripper.
type Retry struct {
	RetryCodes map[int]bool
	MaxTries   uint
	Backoff    Backoff
	Transport  http.RoundTripper
	Sleeper    func(duration time.Duration)
}

func (m Retry) RoundTrip(req *http.Request) (*http.Response, error) {
	var res *http.Response
	var err error
	sleep := m.Sleeper
	if sleep == nil {
		sleep = time.Sleep
	}
	var body []byte
	if req.Body != nil {
		body, err = ioutil.ReadAll(req.Body)
	}
	if err == nil {
		// Retry logic: Retry up to maxTries, wait exponentially long (using the backoff).
		for try := uint(0); try < m.MaxTries+1; try++ {
			if req.Body != nil {
				req.Body = ioutil.NopCloser(bytes.NewReader(body)) // Reset body for reading
			}
			res, err = m.Transport.RoundTrip(req)
			t := m.Backoff.Get(try) // time to wait for next retry
			// Do not try again if there was an error with the transport or the status code is not in the RetryCodes
			a := err != nil
			b := res == nil
			c := !m.RetryCodes[res.StatusCode]
			if a || b || c {
				return res, err
			}
			logrus.Infof("Retrying attempt: %v", try)
			// Wait and try again
			if try != m.MaxTries-1 {
				sleep(t)
			}
		}
	}

	return res, err
}
