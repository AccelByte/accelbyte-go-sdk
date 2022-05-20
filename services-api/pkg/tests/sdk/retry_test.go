// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"net/http"
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/stretchr/testify/assert"
)

const (
	maxTries = 4
)

var (
	request              = http.Request{}
	successRes           = http.Response{StatusCode: 200}
	retryResErrWithRetry = http.Response{StatusCode: 500, Header: http.Header{}}
)

func TestRetry_success(t *testing.T) {
	calls := 0
	slept := int64(0)
	c := config{
		transport: func(r *http.Request) (*http.Response, error) {
			calls++
			return &successRes, nil
		},
		sleeper: func(duration time.Duration) {
			slept += duration.Milliseconds()
		},
	}
	res, err := c.getTestRetry().RoundTrip(&request)

	assert.Equal(t, calls, 1)
	assert.Equal(t, slept, int64(0))
	assert.Equal(t, err, nil)
	assert.Equal(t, *res, successRes)
}

func TestRetry_withRetry(t *testing.T) {
	// POST /configure-overwrite-response
	// body: {
	//   "enabled": true,
	//   "overwrite": true,
	//   "status": 500,
	// }

	calls := 0
	slept := int64(0)
	c := config{
		transport: func(r *http.Request) (*http.Response, error) {
			calls++
			return &retryResErrWithRetry, nil
		},
		sleeper: func(duration time.Duration) {
			slept += duration.Milliseconds()
		},
	}
	res, err := c.getTestRetry().RoundTrip(&request)

	assert.Equal(t, calls, maxTries)
	assert.Equal(t, slept, int64(600))
	assert.Equal(t, err, nil)
	assert.Equal(t, *res, retryResErrWithRetry)

	// POST /reset-overwrite-response
}

func TestRetry_withRetryOnce(t *testing.T) {
	calls := 0
	slept := int64(0)
	c := config{
		transport: func(r *http.Request) (*http.Response, error) {
			calls++
			if calls == 2 {
				return &successRes, nil
			}
			return &retryResErrWithRetry, nil
		},
		sleeper: func(duration time.Duration) {
			slept += duration.Milliseconds()
		},
	}
	res, err := c.getTestRetry().RoundTrip(&request)

	assert.Equal(t, calls, 2)
	assert.Equal(t, slept, int64(100))
	assert.Equal(t, err, nil)
	assert.Equal(t, *res, successRes)
}

type transportWrapper struct {
	transport func(r *http.Request) (*http.Response, error)
}

func (t transportWrapper) RoundTrip(request *http.Request) (*http.Response, error) {
	return t.transport(request)
}

type config struct {
	transport func(r *http.Request) (*http.Response, error)
	sleeper   func(duration time.Duration)
}

func (c *config) getTestRetry() utils.Retry {
	// Should backoff as 100ms, 200ms, 300ms, 300ms...
	testBackoff := utils.NewExponentialDelay(100*time.Millisecond, 300*time.Millisecond)
	m := utils.Retry{
		RetryCodes: map[int]bool{500: true},
		MaxTries:   maxTries,
		Backoff:    testBackoff,
		Transport:  transportWrapper{transport: c.transport},
		Sleeper:    c.sleeper,
	}
	return m
}
