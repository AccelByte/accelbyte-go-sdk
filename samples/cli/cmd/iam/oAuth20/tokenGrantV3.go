// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
			Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			ConfigRepository: &repository.ConfigRepositoryImpl{},
			TokenRepository:  &repository.TokenRepositoryImpl{},
		}
		grantType, _ := cmd.Flags().GetString("grantType")
		authTrustId, _ := cmd.Flags().GetString("authTrustId")
		deviceId, _ := cmd.Flags().GetString("deviceId")
		additionalData, _ := cmd.Flags().GetString("additionalData")
		clientId, _ := cmd.Flags().GetString("clientId")
		code, _ := cmd.Flags().GetString("code")
		codeVerifier, _ := cmd.Flags().GetString("codeVerifier")
		extendNamespace, _ := cmd.Flags().GetString("extendNamespace")
		extendExp, _ := cmd.Flags().GetBool("extendExp")
		password, _ := cmd.Flags().GetString("password")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		refreshToken, _ := cmd.Flags().GetString("refreshToken")
		username, _ := cmd.Flags().GetString("username")
		input := &o_auth2_0.TokenGrantV3Params{
			AuthTrustID:     &authTrustId,
			DeviceID:        &deviceId,
			AdditionalData:  &additionalData,
			ClientID:        &clientId,
			Code:            &code,
			CodeVerifier:    &codeVerifier,
			ExtendNamespace: &extendNamespace,
			ExtendExp:       &extendExp,
			Password:        &password,
			RedirectURI:     &redirectUri,
			RefreshToken:    &refreshToken,
			Username:        &username,
			GrantType:       grantType,
		}
		ok, errOK := oAuth20Service.TokenGrantV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	TokenGrantV3Cmd.Flags().String("authTrustId", "", "Auth trust id")
	TokenGrantV3Cmd.Flags().String("deviceId", "", "Device id")
	TokenGrantV3Cmd.Flags().String("additionalData", "", "Additional data")
	TokenGrantV3Cmd.Flags().String("clientId", "", "Client id")
	TokenGrantV3Cmd.Flags().String("code", "", "Code")
	TokenGrantV3Cmd.Flags().String("codeVerifier", "", "Code verifier")
	TokenGrantV3Cmd.Flags().String("extendNamespace", "", "Extend namespace")
	TokenGrantV3Cmd.Flags().Bool("extendExp", false, "Extend exp")
	TokenGrantV3Cmd.Flags().String("password", "", "Password")
	TokenGrantV3Cmd.Flags().String("redirectUri", "", "Redirect uri")
	TokenGrantV3Cmd.Flags().String("refreshToken", "", "Refresh token")
	TokenGrantV3Cmd.Flags().String("username", "", "Username")
	TokenGrantV3Cmd.Flags().String("grantType", "", "Grant type")
	_ = TokenGrantV3Cmd.MarkFlagRequired("grant_type")
}
