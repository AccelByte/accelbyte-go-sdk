// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth

import (
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
		macAddress, _ := cmd.Flags().GetString("macAddress")
		platformToken, _ := cmd.Flags().GetString("platformToken")
		input := &o_auth.PlatformTokenRequestHandlerParams{
			DeviceID:      &deviceId,
			MacAddress:    &macAddress,
			PlatformToken: &platformToken,
			Namespace:     namespace,
			PlatformID:    platformId,
		}
		ok, errOK := oAuthService.PlatformTokenRequestHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PlatformTokenRequestHandlerCmd.Flags().String("deviceId", "", "Device id")
	PlatformTokenRequestHandlerCmd.Flags().String("macAddress", "", "Mac address")
	PlatformTokenRequestHandlerCmd.Flags().String("platformToken", "", "Platform token")
	PlatformTokenRequestHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = PlatformTokenRequestHandlerCmd.MarkFlagRequired("namespace")
	PlatformTokenRequestHandlerCmd.Flags().String("platformId", "", "Platform id")
	_ = PlatformTokenRequestHandlerCmd.MarkFlagRequired("platformId")
}
