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

// adminGetUserLoginHistoriesV3Cmd represents the adminGetUserLoginHistoriesV3 command
var adminGetUserLoginHistoriesV3Cmd = &cobra.Command{
	Use:   "adminGetUserLoginHistoriesV3",
	Short: "Admin get user login histories V3",
	Long:  `Admin get user login histories V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		after, _ := cmd.Flags().GetFloat64("after")
		before, _ := cmd.Flags().GetFloat64("before")
		limit, _ := cmd.Flags().GetFloat64("limit")
		input := &users.AdminGetUserLoginHistoriesV3Params{
			Namespace: namespace,
			UserID:    userId,
			After:     &after,
			Before:    &before,
			Limit:     &limit,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminGetUserLoginHistoriesV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetUserLoginHistoriesV3Cmd)
	adminGetUserLoginHistoriesV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetUserLoginHistoriesV3Cmd.MarkFlagRequired("namespace")
	adminGetUserLoginHistoriesV3Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminGetUserLoginHistoriesV3Cmd.MarkFlagRequired("userId")
	adminGetUserLoginHistoriesV3Cmd.Flags().Float64P("after", "a", 0, "After")
	adminGetUserLoginHistoriesV3Cmd.Flags().Float64P("before", "b", 0, "Before")
	adminGetUserLoginHistoriesV3Cmd.Flags().Float64P("limit", "l", 20, "Limit")
}