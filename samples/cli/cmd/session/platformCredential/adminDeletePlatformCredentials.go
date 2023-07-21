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

// AdminDeletePlatformCredentialsCmd represents the AdminDeletePlatformCredentials command
var AdminDeletePlatformCredentialsCmd = &cobra.Command{
	Use:   "adminDeletePlatformCredentials",
	Short: "Admin delete platform credentials",
	Long:  `Admin delete platform credentials`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformCredentialService := &session.PlatformCredentialService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &platform_credential.AdminDeletePlatformCredentialsParams{
			Namespace: namespace,
		}
		errNoContent := platformCredentialService.AdminDeletePlatformCredentialsShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeletePlatformCredentialsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeletePlatformCredentialsCmd.MarkFlagRequired("namespace")
}
