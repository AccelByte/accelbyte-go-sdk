// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetUserLoginHistoriesV3Cmd represents the AdminGetUserLoginHistoriesV3 command
var AdminGetUserLoginHistoriesV3Cmd = &cobra.Command{
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
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &users.AdminGetUserLoginHistoriesV3Params{
			Namespace: namespace,
			UserID:    userId,
			After:     &after,
			Before:    &before,
			Limit:     &limit,
		}
		ok, errOK := usersService.AdminGetUserLoginHistoriesV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserLoginHistoriesV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserLoginHistoriesV3Cmd.MarkFlagRequired("namespace")
	AdminGetUserLoginHistoriesV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserLoginHistoriesV3Cmd.MarkFlagRequired("userId")
	AdminGetUserLoginHistoriesV3Cmd.Flags().Float64("after", 0, "After")
	AdminGetUserLoginHistoriesV3Cmd.Flags().Float64("before", 0, "Before")
	AdminGetUserLoginHistoriesV3Cmd.Flags().Int64("limit", 20, "Limit")
}
