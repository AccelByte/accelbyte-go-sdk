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

// PlatformTokenGrantV3Cmd represents the PlatformTokenGrantV3 command
var PlatformTokenGrantV3Cmd = &cobra.Command{
	Use:   "PlatformTokenGrantV3",
	Short: "Platform token grant V3",
	Long:  `Platform token grant V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		clientId, _ := cmd.Flags().GetString("clientId")
		deviceId, _ := cmd.Flags().GetString("deviceId")
		platformToken, _ := cmd.Flags().GetString("platformToken")
		input := &o_auth2_0.PlatformTokenGrantV3Params{
			ClientID:      &clientId,
			DeviceID:      &deviceId,
			PlatformToken: &platformToken,
			PlatformID:    platformId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := oAuth20Service.PlatformTokenGrantV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PlatformTokenGrantV3Cmd.Flags().StringP("client_id", "cd", " ", "Client id")
	PlatformTokenGrantV3Cmd.Flags().StringP("device_id", "dd", " ", "Device id")
	PlatformTokenGrantV3Cmd.Flags().StringP("platform_token", "pn", " ", "Platform token")
	PlatformTokenGrantV3Cmd.Flags().StringP("platformId", "pd", " ", "Platform id")
	_ = PlatformTokenGrantV3Cmd.MarkFlagRequired("platformId")
}
