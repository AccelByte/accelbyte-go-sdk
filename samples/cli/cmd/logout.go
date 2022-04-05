// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
)

// logoutCmd represents the logout command
var logoutCmd = &cobra.Command{
	Use:   "logout",
	Short: "Logout",
	Long:  `Logout the user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := iam.OAuth20Service{
			Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			ConfigRepository: &repository.ConfigRepositoryImpl{},
			TokenRepository:  &repository.TokenRepositoryImpl{},
		}
		err := oAuth20Service.Logout()
		if err != nil {
			logrus.Error(err)

			return err
		}
		logrus.Info("You are successfully logged out")

		return nil
	},
}

func init() {
	RootCmd.AddCommand(logoutCmd)
}
