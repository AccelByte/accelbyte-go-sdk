// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"fmt"
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/testutils"
)

func TestUserAgentGen(t *testing.T) {
	t.Run("Empty app client name", func(t *testing.T) {
		testutils.Setenv(t, "APP_CLIENT_NAME", "")
		userAgent := UserAgentGen()

		assert.Equal(t, UserAgentSDK, userAgent)
	})

	t.Run("With proper app client name", func(t *testing.T) {
		clientName := "my-game-client"
		testutils.Setenv(t, "APP_CLIENT_NAME", clientName)
		userAgent := UserAgentGen()

		assert.True(t, strings.HasPrefix(userAgent, UserAgentSDK))
		assert.True(t, strings.HasSuffix(userAgent, fmt.Sprintf("(%s)", clientName)))
	})
}
