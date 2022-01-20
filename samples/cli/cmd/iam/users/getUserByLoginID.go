// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserByLoginIDCmd represents the getUserByLoginID command
var getUserByLoginIDCmd = &cobra.Command{
	Use:   "getUserByLoginID",
	Short: "Get user by login ID",
	Long:  `Get user by login ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		loginId, _ := cmd.Flags().GetString("loginId")
		input := &users.GetUserByLoginIDParams{
			Namespace: namespace,
			LoginID:   &loginId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.GetUserByLoginID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserByLoginIDCmd)
	getUserByLoginIDCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserByLoginIDCmd.MarkFlagRequired("namespace")
	getUserByLoginIDCmd.Flags().StringP("loginId", "l", " ", "Login id")
}