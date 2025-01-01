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

// AdminGetPlatformAccountClosureClientsCmd represents the AdminGetPlatformAccountClosureClients command
var AdminGetPlatformAccountClosureClientsCmd = &cobra.Command{
	Use:   "adminGetPlatformAccountClosureClients",
	Short: "Admin get platform account closure clients",
	Long:  `Admin get platform account closure clients`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformAccountClosureClientService := &gdpr.PlatformAccountClosureClientService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &platform_account_closure_client.AdminGetPlatformAccountClosureClientsParams{
			Namespace: namespace,
		}
		ok, errOK := platformAccountClosureClientService.AdminGetPlatformAccountClosureClientsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetPlatformAccountClosureClientsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPlatformAccountClosureClientsCmd.MarkFlagRequired("namespace")
}
