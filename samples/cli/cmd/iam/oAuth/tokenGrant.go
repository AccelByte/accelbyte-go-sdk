// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package oAuth

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"net/http"
)

// TokenGrantCmd represents the TokenGrant command
var TokenGrantCmd = &cobra.Command{
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
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
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
			HTTPClient:   httpClient,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := oAuthService.TokenGrant(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	TokenGrantCmd.Flags().StringP("deviceId", "", "", "Device id")
	TokenGrantCmd.Flags().StringP("code", "", "", "Code")
	TokenGrantCmd.Flags().BoolP("extendExp", "", false, "Extend exp")
	TokenGrantCmd.Flags().StringP("namespace", "", "", "Namespace")
	TokenGrantCmd.Flags().StringP("password", "", "", "Password")
	TokenGrantCmd.Flags().StringP("redirectUri", "", "", "Redirect uri")
	TokenGrantCmd.Flags().StringP("refreshToken", "", "", "Refresh token")
	TokenGrantCmd.Flags().StringP("username", "", "", "Username")
	TokenGrantCmd.Flags().StringP("grantType", "", "", "Grant type")
	_ = TokenGrantCmd.MarkFlagRequired("grant_type")
}
