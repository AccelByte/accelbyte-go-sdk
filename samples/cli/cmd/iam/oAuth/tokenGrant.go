// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// tokenGrantCmd represents the tokenGrant command
var tokenGrantCmd = &cobra.Command{
	Use:   "tokenGrant",
	Short: "Token grant",
	Long:  `Token grant`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuthService := &iam.OAuthService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		grantType, _ := cmd.Flags().GetString("grantType")
		deviceId, _ := cmd.Flags().GetString("deviceId")
		code, _ := cmd.Flags().GetString("code")
		extendExp, _ := cmd.Flags().GetBool("extendExp")
		namespace, _ := cmd.Flags().GetString("namespace")
		password, _ := cmd.Flags().GetString("password")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		refreshToken, _ := cmd.Flags().GetString("refreshToken")
		username, _ := cmd.Flags().GetString("username")
		input := &o_auth.TokenGrantParams{
			DeviceID:     &deviceId,
			Code:         &code,
			ExtendExp:    &extendExp,
			Namespace:    &namespace,
			Password:     &password,
			RedirectURI:  &redirectUri,
			RefreshToken: &refreshToken,
			Username:     &username,
			GrantType:    grantType,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := oAuthService.TokenGrant(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(tokenGrantCmd)
	tokenGrantCmd.Flags().StringP("Device-Id", "d", " ", "Device id")
	tokenGrantCmd.Flags().StringP("code", "c", " ", "Code")
	tokenGrantCmd.Flags().BoolP("extend_exp", "e", false, "Extend exp")
	tokenGrantCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	tokenGrantCmd.Flags().StringP("password", "p", " ", "Password")
	tokenGrantCmd.Flags().StringP("redirect_uri", "r", " ", "Redirect uri")
	tokenGrantCmd.Flags().StringP("refresh_token", "r", " ", "Refresh token")
	tokenGrantCmd.Flags().StringP("username", "u", " ", "Username")
	tokenGrantCmd.Flags().StringP("grant_type", "g", " ", "Grant type")
	_ = tokenGrantCmd.MarkFlagRequired("grant_type")
}
