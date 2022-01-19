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

// adminGetUserPlatformAccountsV3Cmd represents the adminGetUserPlatformAccountsV3 command
var adminGetUserPlatformAccountsV3Cmd = &cobra.Command{
	Use:   "adminGetUserPlatformAccountsV3",
	Short: "Admin get user platform accounts V3",
	Long:  `Admin get user platform accounts V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &users.AdminGetUserPlatformAccountsV3Params{
			Namespace: namespace,
			UserID:    userId,
			After:     &after,
			Before:    &before,
			Limit:     &limit,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminGetUserPlatformAccountsV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetUserPlatformAccountsV3Cmd)
	adminGetUserPlatformAccountsV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetUserPlatformAccountsV3Cmd.MarkFlagRequired("namespace")
	adminGetUserPlatformAccountsV3Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminGetUserPlatformAccountsV3Cmd.MarkFlagRequired("userId")
	adminGetUserPlatformAccountsV3Cmd.Flags().StringP("after", "a", "0", "After")
	adminGetUserPlatformAccountsV3Cmd.Flags().StringP("before", "b", "0", "Before")
	adminGetUserPlatformAccountsV3Cmd.Flags().Int64P("limit", "l", 20, "Limit")
}
