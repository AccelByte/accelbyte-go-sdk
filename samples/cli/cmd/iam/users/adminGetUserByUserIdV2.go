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

// adminGetUserByUserIdV2Cmd represents the adminGetUserByUserIdV2 command
var adminGetUserByUserIdV2Cmd = &cobra.Command{
	Use:   "adminGetUserByUserIdV2",
	Short: "Admin get user by user id V2",
	Long:  `Admin get user by user id V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminGetUserByUserIDV2Params{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminGetUserByUserIDV2(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetUserByUserIdV2Cmd)
	adminGetUserByUserIdV2Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetUserByUserIdV2Cmd.MarkFlagRequired("namespace")
	adminGetUserByUserIdV2Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminGetUserByUserIdV2Cmd.MarkFlagRequired("userId")
}
