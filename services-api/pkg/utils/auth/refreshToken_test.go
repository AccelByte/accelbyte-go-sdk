// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
)

func TestDefaultRefreshTokenImpl(t *testing.T) {
	refreshToken := auth.DefaultRefreshTokenImpl()

	refreshToken.SetRefreshIsRunningInBackground(true)

	assert.True(t, refreshToken.DisableAutoRefresh())
	assert.Equal(t, 1.0, refreshToken.GetRefreshRate())
	assert.True(t, refreshToken.IsRefreshInProgress)
}
