// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
	t.Helper()
	testingTimeNow = &now
	t.Cleanup(func() {
		testingTimeNow = nil
	})
}
