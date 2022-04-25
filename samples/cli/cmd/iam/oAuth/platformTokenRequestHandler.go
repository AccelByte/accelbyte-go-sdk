// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth

import (
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PlatformTokenRequestHandlerCmd represents the PlatformTokenRequestHandler command
var PlatformTokenRequestHandlerCmd = &cobra.Command{
	Use:   "platformTokenRequestHandler",
	Short: "Platform token request handler",
	Long:  `Platform token request handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuthService := &iam.OAuthService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		deviceId, _ := cmd.Flags().GetString("deviceId")
		platformToken, _ := cmd.Flags().GetString("platformToken")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth.PlatformTokenRequestHandlerParams{
			DeviceID:      &deviceId,
			PlatformToken: &platformToken,
			Namespace:     namespace,
			PlatformID:    platformId,
			HTTPClient:    httpClient,
		}
		ok, err := oAuthService.PlatformTokenRequestHandlerShort(input, nil)
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
	PlatformTokenRequestHandlerCmd.Flags().StringP("deviceId", "", "", "Device id")
	PlatformTokenRequestHandlerCmd.Flags().StringP("platformToken", "", "", "Platform token")
	PlatformTokenRequestHandlerCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PlatformTokenRequestHandlerCmd.MarkFlagRequired("namespace")
	PlatformTokenRequestHandlerCmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = PlatformTokenRequestHandlerCmd.MarkFlagRequired("platformId")
}
