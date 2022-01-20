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

// adminGetUserBanV3Cmd represents the adminGetUserBanV3 command
var adminGetUserBanV3Cmd = &cobra.Command{
	Use:   "adminGetUserBanV3",
	Short: "Admin get user ban V3",
	Long:  `Admin get user ban V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &users.AdminGetUserBanV3Params{
			Namespace:  namespace,
			UserID:     userId,
			ActiveOnly: &activeOnly,
			After:      &after,
			Before:     &before,
			Limit:      &limit,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminGetUserBanV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetUserBanV3Cmd)
	adminGetUserBanV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetUserBanV3Cmd.MarkFlagRequired("namespace")
	adminGetUserBanV3Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminGetUserBanV3Cmd.MarkFlagRequired("userId")
	adminGetUserBanV3Cmd.Flags().BoolP("activeOnly", "a", false, "Active only")
	adminGetUserBanV3Cmd.Flags().StringP("after", "a", "0", "After")
	adminGetUserBanV3Cmd.Flags().StringP("before", "b", "0", "Before")
	adminGetUserBanV3Cmd.Flags().Int64P("limit", "l", 20, "Limit")
}