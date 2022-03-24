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
	"net/http"
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
		deviceId, _ := cmd.Flags().GetString("deviceId")
		clientId, _ := cmd.Flags().GetString("clientId")
		code, _ := cmd.Flags().GetString("code")
		codeVerifier, _ := cmd.Flags().GetString("codeVerifier")
		extendExp, _ := cmd.Flags().GetBool("extendExp")
		password, _ := cmd.Flags().GetString("password")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		refreshToken, _ := cmd.Flags().GetString("refreshToken")
		username, _ := cmd.Flags().GetString("username")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth2_0.TokenGrantV3Params{
			DeviceID:     &deviceId,
			ClientID:     &clientId,
			Code:         &code,
			CodeVerifier: &codeVerifier,
			ExtendExp:    &extendExp,
			Password:     &password,
			RedirectURI:  &redirectUri,
			RefreshToken: &refreshToken,
			Username:     &username,
			GrantType:    grantType,
			HTTPClient:   httpClient,
		}
		ok, err := oAuth20Service.TokenGrantV3Short(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	TokenGrantV3Cmd.Flags().StringP("deviceId", "", "", "Device id")
	TokenGrantV3Cmd.Flags().StringP("clientId", "", "", "Client id")
	TokenGrantV3Cmd.Flags().StringP("code", "", "", "Code")
	TokenGrantV3Cmd.Flags().StringP("codeVerifier", "", "", "Code verifier")
	TokenGrantV3Cmd.Flags().BoolP("extendExp", "", false, "Extend exp")
	TokenGrantV3Cmd.Flags().StringP("password", "", "", "Password")
	TokenGrantV3Cmd.Flags().StringP("redirectUri", "", "", "Redirect uri")
	TokenGrantV3Cmd.Flags().StringP("refreshToken", "", "", "Refresh token")
	TokenGrantV3Cmd.Flags().StringP("username", "", "", "Username")
	TokenGrantV3Cmd.Flags().StringP("grantType", "", "", "Grant type")
	_ = TokenGrantV3Cmd.MarkFlagRequired("grant_type")
}
