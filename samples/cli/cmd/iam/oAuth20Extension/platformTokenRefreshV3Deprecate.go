// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20Extension

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PlatformTokenRefreshV3DeprecateCmd represents the PlatformTokenRefreshV3Deprecate command
var PlatformTokenRefreshV3DeprecateCmd = &cobra.Command{
	Use:   "platformTokenRefreshV3Deprecate",
	Short: "Platform token refresh V3 deprecate",
	Long:  `Platform token refresh V3 deprecate`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformToken, _ := cmd.Flags().GetString("platformToken")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &o_auth2_0_extension.PlatformTokenRefreshV3DeprecateParams{
			PlatformToken: platformToken,
			PlatformID:    platformId,
		}
		ok, errOK := oAuth20ExtensionService.PlatformTokenRefreshV3DeprecateShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PlatformTokenRefreshV3DeprecateCmd.Flags().String("platformToken", "", "Platform token")
	_ = PlatformTokenRefreshV3DeprecateCmd.MarkFlagRequired("platform_token")
	PlatformTokenRefreshV3DeprecateCmd.Flags().String("platformId", "", "Platform id")
	_ = PlatformTokenRefreshV3DeprecateCmd.MarkFlagRequired("platformId")
}
