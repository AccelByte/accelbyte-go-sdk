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

// logoutCmd represents the logout command
var logoutCmd = &cobra.Command{
	Use:   "logout",
	Short: "Logout",
	Long:  `Logout the user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userService := service.UserService{
			IamService:      factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			BasicService:    factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
			OauthService: &service.OauthService{
				IamService:       factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
				ConfigRepository: &repository.ConfigRepositoryImpl{},
				TokenRepository:  &repository.TokenRepositoryImpl{},
			},
		}
		err := userService.Logout()
		if err != nil {
			logrus.Error(err)
			return err
		}
		logrus.Info("You are successfully logged out")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(logoutCmd)
}
