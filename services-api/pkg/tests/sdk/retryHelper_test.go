// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

const (
	maxTries = 4
)

var (
	request              = http.Request{}
	successRes           = http.Response{StatusCode: 200}
	retryResErrWithRetry = http.Response{StatusCode: 500, Header: http.Header{}}
	TestMockService      = &TestWrapperService{
		Client:           NewClientWithBasePath("0.0.0.0:8080", ""),
		ConfigRepository: &ConfigRepositoryImplTest{},
		TokenRepository:  &TokenRepositoryImplTest{},
	}
)

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
	testBackoff := utils.NewExponentialBackoff(100*time.Millisecond, 300*time.Millisecond)
	m := utils.Retry{
		RetryCodes: map[int]bool{500: true},
		MaxTries:   maxTries,
		Backoff:    testBackoff,
		Transport:  transportWrapper{transport: c.transport},
		Sleeper:    c.sleeper,
	}

	return m
}
