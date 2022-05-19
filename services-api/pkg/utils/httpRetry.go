// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"fmt"
	"net/http"
	"time"

	"github.com/sirupsen/logrus"
)

const (
	startBackoff = 1 * time.Second
	maxBackoff   = 5 * time.Second
	maxTries     = 2
)

var retryCodes = map[int]bool{
	422: true, // un-processable entity
	500: true, // internal server error
	504: true, // gateway timeout error
	408: true, // request timeout error
}

// Backoff interface
type Backoff interface {
	// Get delay's duration
	Get(attempt uint) time.Duration
}

type exponentialDelay struct {
	// The start duration to delay after the first Next() call
	Start time.Duration
	// The maximum duration of delay
	Max time.Duration
}

func NewExponentialDelay(start time.Duration, max time.Duration) Backoff {
	return &exponentialDelay{Start: start, Max: max}
}

func (b *exponentialDelay) Get(attempt uint) time.Duration {
	d := b.Start
	for i := uint(0); i < attempt; i++ {
		d *= time.Duration(2)
		if d > b.Max {
			return b.Max
		}
	}
	return d
}

// Retry struct with http.RoundTripper.
type Retry struct {
	RetryCodes map[int]bool
	MaxTries   uint
	Backoff    Backoff
	Transport  http.RoundTripper
	Verbose    bool
	Sleeper    func(duration time.Duration)
}

func SetRetry(inner http.RoundTripper) http.RoundTripper {
	return &Retry{
		MaxTries:   maxTries,
		Backoff:    NewExponentialDelay(startBackoff, maxBackoff),
		Transport:  inner,
		RetryCodes: retryCodes,
	}
}

func (m Retry) RoundTrip(req *http.Request) (*http.Response, error) {
	var res *http.Response
	var err error
	sleep := m.Sleeper // Setup the sleep method for test
	if sleep == nil {
		sleep = time.Sleep
	}
	// Retry logic: Retry up to maxTries, wait exponentially long (using the backoff).
	for try := uint(0); try < m.MaxTries; try++ {
		res, err = m.Transport.RoundTrip(req)
		t := m.Backoff.Get(try) // time to wait for next retry
		// Do not try again if there was an error with the transport or the status code is not in the retryCodes
		if err != nil || res == nil || m.RetryCodes[res.StatusCode] == false {
			return res, err
		}
		logrus.Infof("Retrying attempt: %v", try)
		// This is for test mainly
		if m.Verbose {
			fmt.Printf("Sleeping %v with code %v\n.", t, res.StatusCode)
		}
		// Wait and try again
		if try != m.MaxTries-1 {
			sleep(t)
		}
	}
	return res, err
}

func EnabledRetry(enabled bool) bool {
	return true
}
