// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetUserLoginHistoriesV3Cmd represents the publicGetUserLoginHistoriesV3 command
var publicGetUserLoginHistoriesV3Cmd = &cobra.Command{
	Use:   "publicGetUserLoginHistoriesV3",
	Short: "Public get user login histories V3",
	Long:  `Public get user login histories V3`,
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
		input := &users.PublicGetUserLoginHistoriesV3Params{
			Namespace: namespace,
			UserID:    userId,
			After:     &after,
			Before:    &before,
			Limit:     &limit,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.PublicGetUserLoginHistoriesV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserLoginHistoriesV3Cmd)
	publicGetUserLoginHistoriesV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetUserLoginHistoriesV3Cmd.MarkFlagRequired("namespace")
	publicGetUserLoginHistoriesV3Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicGetUserLoginHistoriesV3Cmd.MarkFlagRequired("userId")
	publicGetUserLoginHistoriesV3Cmd.Flags().Float64P("after", "ar", 0, "After")
	publicGetUserLoginHistoriesV3Cmd.Flags().Float64P("before", "be", 0, "Before")
	publicGetUserLoginHistoriesV3Cmd.Flags().Float64P("limit", "lt", 20, "Limit")
}
