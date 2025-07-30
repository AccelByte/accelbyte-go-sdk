// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestDefaultRefreshTokenImpl(t *testing.T) {
	refreshToken := DefaultRefreshTokenImpl()

	refreshToken.SetRefreshIsRunningInBackground(true)

	assert.True(t, refreshToken.DisableAutoRefresh())
	assert.Equal(t, 0.8, refreshToken.GetRefreshRate())
	assert.True(t, refreshToken.IsRefreshInProgress)
}
