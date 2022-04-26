// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
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
		oAuth20Service := iam.OAuth20Service{
			Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			ConfigRepository: &repository.ConfigRepositoryImpl{},
			TokenRepository:  &repository.TokenRepositoryImpl{},
		}
		if oAuth20Service.ConfigRepository.GetClientSecret() != "" {
			input := &o_auth2_0.TokenGrantV3Params{
				Password:  &password,
				Username:  &username,
				GrantType: "password",
			}
			_, err := oAuth20Service.TokenGrantV3Short(input)
			if err != nil {
				return err
			}
		} else {
			err := oAuth20Service.Login(username, password)
			if err != nil {
				return err
			}
		}
		logrus.Infof("User successfully logged in")

		return nil
	},
}

func init() {
	RootCmd.AddCommand(loginCmd)
	loginCmd.Flags().StringP("username", "u", "", "User name")
	_ = loginCmd.MarkFlagRequired("username")
	loginCmd.Flags().StringP("password", "p", "", "User password")
	_ = loginCmd.MarkFlagRequired("password")
}
