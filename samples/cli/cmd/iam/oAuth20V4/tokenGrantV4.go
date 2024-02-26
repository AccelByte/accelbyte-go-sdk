// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20V4

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// TokenGrantV4Cmd represents the TokenGrantV4 command
var TokenGrantV4Cmd = &cobra.Command{
	Use:   "tokenGrantV4",
	Short: "Token grant V4",
	Long:  `Token grant V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20V4Service := &iam.OAuth20v4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
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
		loginQueueTicket, _ := cmd.Flags().GetString("loginQueueTicket")
		password, _ := cmd.Flags().GetString("password")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		refreshToken, _ := cmd.Flags().GetString("refreshToken")
		username, _ := cmd.Flags().GetString("username")
		codeChallenge, _ := cmd.Flags().GetString("codeChallenge")
		codeChallengeMethod, _ := cmd.Flags().GetString("codeChallengeMethod")
		input := &o_auth2_0_v4.TokenGrantV4Params{
			AuthTrustID:         &authTrustId,
			DeviceID:            &deviceId,
			AdditionalData:      &additionalData,
			ClientID:            &clientId,
			Code:                &code,
			CodeVerifier:        &codeVerifier,
			ExtendNamespace:     &extendNamespace,
			ExtendExp:           &extendExp,
			LoginQueueTicket:    &loginQueueTicket,
			Password:            &password,
			RedirectURI:         &redirectUri,
			RefreshToken:        &refreshToken,
			Username:            &username,
			GrantType:           grantType,
			CodeChallenge:       &codeChallenge,
			CodeChallengeMethod: &codeChallengeMethod,
		}
		ok, errOK := oAuth20V4Service.TokenGrantV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	TokenGrantV4Cmd.Flags().String("authTrustId", "", "Auth trust id")
	TokenGrantV4Cmd.Flags().String("deviceId", "", "Device id")
	TokenGrantV4Cmd.Flags().String("additionalData", "", "Additional data")
	TokenGrantV4Cmd.Flags().String("clientId", "", "Client id")
	TokenGrantV4Cmd.Flags().String("code", "", "Code")
	TokenGrantV4Cmd.Flags().String("codeVerifier", "", "Code verifier")
	TokenGrantV4Cmd.Flags().String("extendNamespace", "", "Extend namespace")
	TokenGrantV4Cmd.Flags().Bool("extendExp", false, "Extend exp")
	TokenGrantV4Cmd.Flags().String("loginQueueTicket", "", "Login queue ticket")
	TokenGrantV4Cmd.Flags().String("password", "", "Password")
	TokenGrantV4Cmd.Flags().String("redirectUri", "", "Redirect uri")
	TokenGrantV4Cmd.Flags().String("refreshToken", "", "Refresh token")
	TokenGrantV4Cmd.Flags().String("username", "", "Username")
	TokenGrantV4Cmd.Flags().String("grantType", "", "Grant type")
	_ = TokenGrantV4Cmd.MarkFlagRequired("grant_type")
	TokenGrantV4Cmd.Flags().String("codeChallenge", "", "Code challenge")
	TokenGrantV4Cmd.Flags().String("codeChallengeMethod", "", "Code challenge method")
}
