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

	//var body []byte
	//if req.Body != nil {
	//	body, err = ioutil.ReadAll(req.Body)
	//}

	req, err = SetupRewindBody(req)
	if err != nil {
		return nil, err
	}

	for attempt := uint(0); attempt < m.MaxTries+1; attempt++ {
		//if req.Body != nil {
		//	req.Body = ioutil.NopCloser(bytes.NewReader(body)) // Reset body for reading
		//}

		res, err = m.Transport.RoundTrip(req)

		// Do not try again if:
		hasError := err != nil
		isResponseNil := res == nil
		isStatusCodeAllowed := !isResponseNil && !m.RetryCodes[res.StatusCode]
		if hasError ||
			isResponseNil ||
			isStatusCodeAllowed {
			return res, err
		}

		req, err = RewindBody(req)
		if err != nil {
			return nil, err
		}

		// Wait (backoff) and try again (retry)
		if attempt != m.MaxTries-1 {
			backOffDuration := m.Backoff.Get(attempt)
			sleep(backOffDuration)
		}

		logrus.Infof("Retrying attempt: %v", attempt)
	}

	return res, err
}
