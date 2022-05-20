// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
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
	500: true, // internal server error
	502: true, // bad gateway
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

type constantDelay struct {
	Duration time.Duration
}

func NewConstantDelay(duration time.Duration) Backoff {
	return &constantDelay{Duration: duration}
}

func (b *constantDelay) Get(attempt uint) time.Duration {
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
	// Retry logic: Retry up to maxTries, wait exponentially long (using the backoff).
	for try := uint(0); try < m.MaxTries+1; try++ {
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

	return res, err
}
