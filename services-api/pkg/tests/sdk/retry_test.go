// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/stretchr/testify/assert"
)

var (
	TestMockService = &TestWrapperService{
		Client:           NewClientWithBasePath("0.0.0.0:8080", ""),
		ConfigRepository: &ConfigRepositoryImplTest{},
		TokenRepository:  &TokenRepositoryImplTest{},
	}
)

func TestRetry_MockServerCustomOverride(t *testing.T) {
	maxNumberOfRetries := uint(1)
	roundTripper := MyRoundTripper{
		Counter:      0,
		RoundTripper: TestMockService.Client.Runtime.Transport,
	}
	tests := []struct {
		name   string
		params bans.AdminGetBansTypeV3Params
		err    string
	}{
		{
			name: "override the default retry with three custom attempt",
			params: bans.AdminGetBansTypeV3Params{
				RetryPolicy: &utils.Retry{
					Transport: &roundTripper,
					MaxTries:  maxNumberOfRetries,
					Backoff:   utils.NewConstantBackoff(0),
					RetryCodes: map[int]bool{
						404: true,
					},
				},
			},
		},
		{
			name: "retry with constant backoff",
			params: bans.AdminGetBansTypeV3Params{
				RetryPolicy: &utils.Retry{
					Transport: &roundTripper,
					MaxTries:  maxNumberOfRetries,
					Backoff:   utils.NewConstantBackoff(0),
					RetryCodes: map[int]bool{
						404: true,
					},
				},
			},
		},
		{
			name: "retry with exponential backoff",
			params: bans.AdminGetBansTypeV3Params{
				RetryPolicy: &utils.Retry{
					Transport: &roundTripper,
					MaxTries:  maxNumberOfRetries,
					Backoff:   utils.NewExponentialBackoff(utils.StartBackoff, utils.MaxBackoff),
					RetryCodes: map[int]bool{
						404: true,
					},
				},
			},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			err := configureMockServerOverwriteResponse(map[string]interface{}{
				"enabled":   true,
				"overwrite": true,
				"status":    404,
			})
			if err != nil {
				t.Skip("unable to configure mock server")
			}

			time.Sleep(1 * time.Second)

			input := &bans.AdminGetBansTypeV3Params{
				RetryPolicy: tt.params.RetryPolicy,
			}
			input.RetryPolicy = tt.params.RetryPolicy
			_, err = iamBansService.AdminGetBansTypeV3Short(input)
			assert.NotNil(t, err, "fail on purpose")
			t.Logf("name: %s, count: %v", tt.name, roundTripper.Counter)
		})
	}
	assert.Equal(t, 6, roundTripper.Counter)

	// Clean up
	err := resetMockServerOverwriteResponse()
	assert.Nil(t, err)
}
