// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// clientLogin represents the client login command
var clientLoginCmd = &cobra.Command{
	Use:   "loginClient",
	Short: "Login client",
	Long:  `Login client via client_credentials flow`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := iam.OAuth20Service{
			Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			ConfigRepository: &repository.ConfigRepositoryImpl{},
			TokenRepository:  &repository.TokenRepositoryImpl{},
		}
		err := oAuth20Service.GrantTokenCredentials("", "")
		if err != nil {
			return err
		}
		logrus.Infof("User successfully logged in")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(clientLoginCmd)
}
