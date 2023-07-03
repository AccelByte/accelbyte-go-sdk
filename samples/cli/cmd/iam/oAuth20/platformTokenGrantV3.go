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

// PlatformTokenGrantV3Cmd represents the PlatformTokenGrantV3 command
var PlatformTokenGrantV3Cmd = &cobra.Command{
	Use:   "platformTokenGrantV3",
	Short: "Platform token grant V3",
	Long:  `Platform token grant V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			ConfigRepository: &repository.ConfigRepositoryImpl{},
			TokenRepository:  &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		additionalData, _ := cmd.Flags().GetString("additionalData")
		clientId, _ := cmd.Flags().GetString("clientId")
		createHeadless, _ := cmd.Flags().GetBool("createHeadless")
		deviceId, _ := cmd.Flags().GetString("deviceId")
		macAddress, _ := cmd.Flags().GetString("macAddress")
		platformToken, _ := cmd.Flags().GetString("platformToken")
		skipSetCookie, _ := cmd.Flags().GetBool("skipSetCookie")
		input := &o_auth2_0.PlatformTokenGrantV3Params{
			AdditionalData: &additionalData,
			ClientID:       &clientId,
			CreateHeadless: &createHeadless,
			DeviceID:       &deviceId,
			MacAddress:     &macAddress,
			PlatformToken:  &platformToken,
			SkipSetCookie:  &skipSetCookie,
			PlatformID:     platformId,
		}
		ok, errOK := oAuth20Service.PlatformTokenGrantV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PlatformTokenGrantV3Cmd.Flags().String("additionalData", "", "Additional data")
	PlatformTokenGrantV3Cmd.Flags().String("clientId", "", "Client id")
	PlatformTokenGrantV3Cmd.Flags().Bool("createHeadless", false, "Create headless")
	PlatformTokenGrantV3Cmd.Flags().String("deviceId", "", "Device id")
	PlatformTokenGrantV3Cmd.Flags().String("macAddress", "", "Mac address")
	PlatformTokenGrantV3Cmd.Flags().String("platformToken", "", "Platform token")
	PlatformTokenGrantV3Cmd.Flags().Bool("skipSetCookie", false, "Skip set cookie")
	PlatformTokenGrantV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = PlatformTokenGrantV3Cmd.MarkFlagRequired("platformId")
}
