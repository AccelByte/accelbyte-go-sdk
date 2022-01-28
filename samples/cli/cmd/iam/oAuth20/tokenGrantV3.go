// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package oAuth20

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// TokenGrantV3Cmd represents the TokenGrantV3 command
var TokenGrantV3Cmd = &cobra.Command{
	Use:   "tokenGrantV3",
	Short: "Token grant V3",
	Long:  `Token grant V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		grantType, _ := cmd.Flags().GetString("grantType")
		deviceId, _ := cmd.Flags().GetString("deviceId")
		clientId, _ := cmd.Flags().GetString("clientId")
		code, _ := cmd.Flags().GetString("code")
		codeVerifier, _ := cmd.Flags().GetString("codeVerifier")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		refreshToken, _ := cmd.Flags().GetString("refreshToken")
		input := &o_auth2_0.TokenGrantV3Params{
			DeviceID:     &deviceId,
			ClientID:     &clientId,
			Code:         &code,
			CodeVerifier: &codeVerifier,
			RedirectURI:  &redirectUri,
			RefreshToken: &refreshToken,
			GrantType:    grantType,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := oAuth20Service.TokenGrantV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	TokenGrantV3Cmd.Flags().StringP("device_id", "", " ", "Device id")
	TokenGrantV3Cmd.Flags().StringP("client_id", "", " ", "Client id")
	TokenGrantV3Cmd.Flags().StringP("code", "", " ", "Code")
	TokenGrantV3Cmd.Flags().StringP("code_verifier", "", " ", "Code verifier")
	TokenGrantV3Cmd.Flags().StringP("redirect_uri", "", " ", "Redirect uri")
	TokenGrantV3Cmd.Flags().StringP("refresh_token", "", " ", "Refresh token")
	TokenGrantV3Cmd.Flags().StringP("grant_type", "", " ", "Grant type")
	_ = TokenGrantV3Cmd.MarkFlagRequired("grant_type")
}
