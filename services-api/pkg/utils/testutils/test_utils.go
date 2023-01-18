package testutils

import (
	"os"
	"testing"
)

// Setenv set environment variable temporarily for testing
// note:
// - not safe in parallel (when t.Parallel() is called before)
// - should not use in Fuzz func
// - use official t.Setenv() when upgrading to go 1.17+
func Setenv(t *testing.T, key, value string) {
	t.Helper()
	prevValue, ok := os.LookupEnv(key)

	if err := os.Setenv(key, value); err != nil {
		t.Fatalf("cannot set environment variable: %v", err)
	}

	if ok {
		t.Cleanup(func() {
			_ = os.Setenv(key, prevValue)
		})
	} else {
		t.Cleanup(func() {
			_ = os.Unsetenv(key)
		})
	}
}
