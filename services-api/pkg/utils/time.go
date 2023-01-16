package utils

import (
	"testing"
	"time"
)

var testingTimeNow *time.Time

func TimeNow() time.Time {
	if testingTimeNow != nil {
		return *testingTimeNow
	}
	return time.Now()
}

func SetTimeNowForTest(t *testing.T, now time.Time) {
	testingTimeNow = &now
	t.Cleanup(func() {
		testingTimeNow = nil
	})
}
