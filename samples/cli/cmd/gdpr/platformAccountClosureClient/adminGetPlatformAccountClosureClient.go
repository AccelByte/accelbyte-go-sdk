// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformAccountClosureClient

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/platform_account_closure_client"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetPlatformAccountClosureClientCmd represents the AdminGetPlatformAccountClosureClient command
var AdminGetPlatformAccountClosureClientCmd = &cobra.Command{
	Use:   "adminGetPlatformAccountClosureClient",
	Short: "Admin get platform account closure client",
	Long:  `Admin get platform account closure client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformAccountClosureClientService := &gdpr.PlatformAccountClosureClientService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platform, _ := cmd.Flags().GetString("platform")
		input := &platform_account_closure_client.AdminGetPlatformAccountClosureClientParams{
			Namespace: namespace,
			Platform:  platform,
		}
		ok, errOK := platformAccountClosureClientService.AdminGetPlatformAccountClosureClientShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetPlatformAccountClosureClientCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPlatformAccountClosureClientCmd.MarkFlagRequired("namespace")
	AdminGetPlatformAccountClosureClientCmd.Flags().String("platform", "", "Platform")
	_ = AdminGetPlatformAccountClosureClientCmd.MarkFlagRequired("platform")
}
