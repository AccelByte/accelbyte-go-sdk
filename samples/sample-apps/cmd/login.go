// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// loginCmd represents the login command
var loginCmd = &cobra.Command{
	Use:   "login",
	Short: "Login user",
	Long:  `Login user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		username := cmd.Flag("username").Value.String()
		password := cmd.Flag("password").Value.String()
		userService := service.UserService{
			IamService:   factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			BasicService: factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			OAuth20Service: &iam.OAuth20Service{
				Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
				ConfigRepository: &repository.ConfigRepositoryImpl{},
				TokenRepository:  &repository.TokenRepositoryImpl{},
			},
		}
		err := userService.Login(username, password)
		if err != nil {
			return err
		}
		logrus.Infof("User successfully logged in")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(loginCmd)
	loginCmd.Flags().StringP("username", "u", "", "User name")
	loginCmd.MarkFlagRequired("username")
	loginCmd.Flags().StringP("password", "p", "", "User password")
	loginCmd.MarkFlagRequired("password")
}
