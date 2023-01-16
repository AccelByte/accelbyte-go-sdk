package utils

import (
	"fmt"
	"github.com/stretchr/testify/assert"
	"strings"
	"testing"
)

func TestUserAgentGen(t *testing.T) {
	t.Run("Empty app client name", func(t *testing.T) {
		t.Setenv("APP_CLIENT_NAME", "")
		userAgent := UserAgentGen()

		assert.Equal(t, UserAgentSDK, userAgent)
	})

	t.Run("With proper app client name", func(t *testing.T) {
		clientName := "my-game-client"
		t.Setenv("APP_CLIENT_NAME", clientName)
		userAgent := UserAgentGen()

		assert.True(t, strings.HasPrefix(userAgent, UserAgentSDK))
		assert.True(t, strings.HasSuffix(userAgent, fmt.Sprintf("(%s)", clientName)))
	})
}
