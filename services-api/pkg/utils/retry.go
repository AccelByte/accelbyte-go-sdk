package utils

import (
	"net/http"
	"time"
)

type PersistentRoundTripper interface {
	ShouldRetry(req *http.Request, res *http.Response, attempts int, elapsed time.Duration) bool
	http.RoundTripper
}

type DefaultPersistentRoundTripper struct {
	MaxAttempts *int
	MaxElapsed  *time.Duration

	internalRoundTripper http.RoundTripper
}

func NewDefaultPersistentRoundTripper(maxAttempts *int, maxElapsed *time.Duration, internalRoundTripper http.RoundTripper) DefaultPersistentRoundTripper {
	return DefaultPersistentRoundTripper{
		MaxAttempts: maxAttempts,
		MaxElapsed:  maxElapsed,

		internalRoundTripper: internalRoundTripper,
	}
}

func (rt DefaultPersistentRoundTripper) ShouldRetry(req *http.Request, res *http.Response, attempts int, elapsed time.Duration) bool {
	if rt.MaxAttempts != nil {
		if attempts >= *rt.MaxAttempts {
			return false
		}
	}
	if rt.MaxElapsed != nil {
		if elapsed >= *rt.MaxElapsed {
			return false
		}
	}

	if !IsStatusCodeError(res.StatusCode) {
		return false
	}

	return true
}

func (rt DefaultPersistentRoundTripper) RoundTrip(req *http.Request) (*http.Response, error) {
	var res *http.Response
	var err error
	attempt := 0
	elapsed := 0 * time.Second
	for {
		attempt += 1
		res, err := rt.internalRoundTripper.RoundTrip(req)
		if err != nil {
			return nil, err
		}
		shouldRetry := rt.ShouldRetry(req, res, attempt, elapsed)
		if !shouldRetry {
			break
		}
	}
	return res, err
}

func IsStatusCodeError(statusCode int) bool {
	if 400 <= statusCode &&
		statusCode <= 499 {
		return true
	}
	if 500 <= statusCode &&
		statusCode <= 599 {
		return true
	}
	return false
}
