// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
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
		oauthService := service.OauthService{
			IamService:       factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			ConfigRepository: &repository.ConfigRepositoryImpl{},
			TokenRepository:  &repository.TokenRepositoryImpl{},
		}
		err := oauthService.GrantTokenCredentials("", "")
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
