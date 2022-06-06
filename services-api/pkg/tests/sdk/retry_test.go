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

func TestRetry_withRetryOnce(t *testing.T) {
	calls := 0
	slept := int64(0)
	c := config{
		transport: func(r *http.Request) (*http.Response, error) {
			calls++
			if calls == 2 { // called twice because it has a default attempt once
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

func TestRetry_MockServer(t *testing.T) {
	tests := []struct {
		name   string
		params MockServerConfigureParams
		err    string
	}{
		{
			name: "retry with default attempt",
			params: MockServerConfigureParams{
				Body: &MockServerConfigure{
					Enabled: true,
					Status:  200,
				},
			},
		},
	}
	for _, tt := range tests {
		t.Skip("nil pointer dereference in docker but not locally")
		t.Run(tt.name, func(t *testing.T) {
			input := &MockServerConfigureParams{
				Body: tt.params.Body,
			}
			_, err := TestMockService.Client.TestOperations.MockServerConfigure(input)
			assert.NotNil(t, err, "error should be empty")
		})
	}
}

func TestRetry_MockServerCustomOverride(t *testing.T) {
	calls := 0
	tests := []struct {
		name   string
		params MockServerConfigureParams
		err    string
	}{
		{
			name: "override the default retry with three custom attempt",
			params: MockServerConfigureParams{
				Body: &MockServerConfigure{
					Status: 403,
				},
				RetryPolicy: &utils.Retry{
					Transport: TestMockService.Client.Runtime.Transport,
					MaxTries:  3,
					Backoff:   utils.NewConstantBackoff(0),
					RetryCodes: map[int]bool{
						403: true,
					},
				},
			},
		},
		{
			name: "retry with constant backoff",
			params: MockServerConfigureParams{
				Body: &MockServerConfigure{
					Status: 403,
				},
				RetryPolicy: &utils.Retry{
					Transport: TestMockService.Client.Runtime.Transport,
					MaxTries:  utils.MaxTries,
					Backoff:   utils.NewConstantBackoff(0),
					RetryCodes: map[int]bool{
						403: true,
					},
				},
			},
		},
		{
			name: "retry with exponential backoff",
			params: MockServerConfigureParams{
				Body: &MockServerConfigure{
					Status: 403,
				},
				RetryPolicy: &utils.Retry{
					Transport: TestMockService.Client.Runtime.Transport,
					MaxTries:  utils.MaxTries,
					Backoff:   utils.NewExponentialBackoff(utils.StartBackoff, utils.MaxBackoff),
					RetryCodes: map[int]bool{
						403: true,
					},
				},
			},
		},
	}
	for _, tt := range tests {
		t.Skip("nil pointer dereference in docker but not locally")
		t.Run(tt.name, func(t *testing.T) {
			input := &MockServerConfigureParams{
				Body: tt.params.Body,
			}
			input.RetryPolicy = tt.params.RetryPolicy
			_, err := TestMockService.Client.TestOperations.MockServerConfigure(input)
			assert.Nil(t, err, "error should be empty")
			assert.Equal(t, calls, 1)
		})
	}
}
