// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils_test

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/constant"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/testutils"
	"github.com/go-openapi/runtime"
	"github.com/stretchr/testify/assert"

	"testing"
)

const (
	flightIdKey       = "X-Flight-Id"
	clientCredentials = "client_credentials"
	admin             = "admin"
)

var inputGet = &user_profile.GetMyProfileInfoParams{
	Namespace: admin,
}

func TestFlightIdGen(t *testing.T) {
	t.Run("through the utils, set the Global Flight Id", func(t *testing.T) {
		// prepare
		req := &runtime.TestClientRequest{}

		// act
		writer := utils.GetDefaultFlightID()
		expectedAuthHeader := writer.Value
		err := req.SetHeaderParam(flightIdKey, writer.Value)

		// assert
		assert.NoError(t, err)
		assert.Equal(t, expectedAuthHeader, req.GetHeaderParams().Get(flightIdKey))
	})

	t.Run("through the utils, update the Global Flight Id", func(t *testing.T) {
		// prepare
		req := &runtime.TestClientRequest{}
		writer := utils.GetDefaultFlightID()
		err := req.SetHeaderParam(flightIdKey, writer.Value)

		assert.NoError(t, err)
		assert.Equal(t, writer.Value, req.GetHeaderParams().Get(flightIdKey)) // original header

		// act
		writer.SetFlightID("updated flightId")
		err2 := req.SetHeaderParam(flightIdKey, writer.Value)

		// assert
		assert.NoError(t, err2)
		assert.Equal(t, writer.Value, req.GetHeaderParams().Get(flightIdKey)) // updated header
	})
}

func TestFlightId_MockServer(t *testing.T) {
	t.Skip("need to run mock server. the \"X-Flight-Id\" header value can be seen from the log")

	// helper
	oAuth20Service, userProfileService := oauthHelper(t)

	t.Run("through the App lifetime level, all existing and new SDK instance will use this value.",
		func(t *testing.T) {
			// prepare
			_, err := oAuth20Service.TokenGrantV3Short(&o_auth2_0.TokenGrantV3Params{
				GrantType: clientCredentials,
			})
			assert.NoError(t, err)

			// act
			updatedVal := "flightId updated globally"
			utils.GetDefaultFlightID().SetFlightID(updatedVal)

			// assert, check
			_, err2 := userProfileService.GetMyProfileInfoShort(inputGet)
			assert.NoError(t, err2)
		})

	t.Run("through the SDK instance level (config), "+
		"update the default flight id, and will be used by newly created sdk object "+
		"(won't affect existing sdk object created before this code get executed)",
		func(t *testing.T) {
			// prepare
			_, err := oAuth20Service.TokenGrantV3Short(&o_auth2_0.TokenGrantV3Params{ // oAuth20Service use the global
				GrantType: clientCredentials,
			})
			assert.NoError(t, err)

			// act
			oAuth20Service2, _ := oauthHelper(t)
			updatedVal := "flightId updated using SDK config"
			oAuth20Service2.FlightIdRepository = &utils.FlightIdContainer{Value: updatedVal}
			_, err2 := oAuth20Service2.TokenGrantV3Short(&o_auth2_0.TokenGrantV3Params{ // oAuth20ServiceUpdate updated
				GrantType: clientCredentials,
			})
			assert.NoError(t, err2)

			// assert, check
			_, err3 := userProfileService.GetMyProfileInfoShort(inputGet) // userProfileService updated (newly created)
			assert.NoError(t, err3)
			_, err4 := oAuth20Service.TokenGrantV3Short(&o_auth2_0.TokenGrantV3Params{ // oAuth20Service use the global (existing, won't affect)
				GrantType: clientCredentials,
			})
			assert.NoError(t, err4)
			oAuth20Service3, _ := oauthHelper(t)
			_, err5 := oAuth20Service3.TokenGrantV3Short(&o_auth2_0.TokenGrantV3Params{ // oAuth20Service2 updated (newly created)
				GrantType: clientCredentials,
			})
			assert.NoError(t, err5)
		})

	t.Run("through the SDK instance level (wrapper),"+
		"will update the flight id value stored inside the sdk object. Will be used for all operations executed by the sdk object.",
		func(t *testing.T) {
			// prepare
			_, err := oAuth20Service.TokenGrantV3Short(&o_auth2_0.TokenGrantV3Params{ // use the global
				GrantType: clientCredentials,
			})
			assert.NoError(t, err)

			// act
			updatedVal := "flightId updated using wrapper"
			oAuth20Service.UpdateFlightId(updatedVal)

			// assert, check
			_, err2 := oAuth20Service.TokenGrantV3Short(&o_auth2_0.TokenGrantV3Params{ // updated
				GrantType: clientCredentials,
			})
			assert.NoError(t, err2)
			err3 := oAuth20Service.TokenRevocationV3Short(&o_auth2_0.TokenRevocationV3Params{ // updated
				Token: admin,
			})
			assert.NoError(t, err3)
			_, err4 := userProfileService.GetMyProfileInfoShort(inputGet) // use the global
			assert.NoError(t, err4)
		})

	t.Run("through the operation level, only update this exact operation (the top priority)",
		func(t *testing.T) {
			// prepare
			_, err := oAuth20Service.TokenGrantV3Short(&o_auth2_0.TokenGrantV3Params{ // use the global
				GrantType: clientCredentials,
			})
			assert.NoError(t, err)

			// act
			updatedVal := "flightId updated using operation's parameter"
			_, err2 := oAuth20Service.TokenGrantV3Short(&o_auth2_0.TokenGrantV3Params{ // only this operation updated
				GrantType: clientCredentials,
				XFlightId: &updatedVal,
			})

			// assert
			assert.NoError(t, err2)
			err3 := oAuth20Service.TokenRevocationV3Short(&o_auth2_0.TokenRevocationV3Params{ // still use the global
				Token: admin,
			})
			assert.NoError(t, err3)
		})
}

func oauthHelper(t *testing.T) (*iam.OAuth20Service, *basic.UserProfileService) {
	t.Helper()
	testutils.Setenv(t, "ENABLE_LOG", "true")
	testutils.Setenv(t, constant.EnvClientID, admin)
	testutils.Setenv(t, constant.EnvClientSecret, admin)
	testutils.Setenv(t, constant.EnvBaseURL, "http://127.0.0.1:8080")
	config := auth.DefaultConfigRepositoryImpl()
	token := auth.DefaultTokenRepositoryImpl()

	return &iam.OAuth20Service{
			Client:           factory.NewIamClient(config),
			TokenRepository:  token,
			ConfigRepository: config,
		}, &basic.UserProfileService{
			Client:           factory.NewBasicClient(config),
			TokenRepository:  token,
			ConfigRepository: config,
		}
}
