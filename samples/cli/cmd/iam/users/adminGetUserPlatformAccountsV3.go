// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetUserPlatformAccountsV3Cmd represents the AdminGetUserPlatformAccountsV3 command
var AdminGetUserPlatformAccountsV3Cmd = &cobra.Command{
	Use:   "AdminGetUserPlatformAccountsV3",
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
	AdminGetUserPlatformAccountsV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminGetUserPlatformAccountsV3Cmd.MarkFlagRequired("namespace")
	AdminGetUserPlatformAccountsV3Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = AdminGetUserPlatformAccountsV3Cmd.MarkFlagRequired("userId")
	AdminGetUserPlatformAccountsV3Cmd.Flags().StringP("after", "ar", "0", "After")
	AdminGetUserPlatformAccountsV3Cmd.Flags().StringP("before", "be", "0", "Before")
	AdminGetUserPlatformAccountsV3Cmd.Flags().Int64P("limit", "lt", 20, "Limit")
}
