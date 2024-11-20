// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformCredential

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/platform_credential"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminSyncPlatformCredentialsCmd represents the AdminSyncPlatformCredentials command
var AdminSyncPlatformCredentialsCmd = &cobra.Command{
	Use:   "adminSyncPlatformCredentials",
	Short: "Admin sync platform credentials",
	Long:  `Admin sync platform credentials`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformCredentialService := &session.PlatformCredentialService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &platform_credential.AdminSyncPlatformCredentialsParams{
			Namespace:  namespace,
			PlatformID: platformId,
		}
		ok, errOK := platformCredentialService.AdminSyncPlatformCredentialsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminSyncPlatformCredentialsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSyncPlatformCredentialsCmd.MarkFlagRequired("namespace")
	AdminSyncPlatformCredentialsCmd.Flags().String("platformId", "", "Platform id")
	_ = AdminSyncPlatformCredentialsCmd.MarkFlagRequired("platformId")
}
