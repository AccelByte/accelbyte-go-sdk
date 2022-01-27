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

// AdminGetUserBanV3Cmd represents the AdminGetUserBanV3 command
var AdminGetUserBanV3Cmd = &cobra.Command{
	Use:   "AdminGetUserBanV3",
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
	AdminGetUserBanV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminGetUserBanV3Cmd.MarkFlagRequired("namespace")
	AdminGetUserBanV3Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = AdminGetUserBanV3Cmd.MarkFlagRequired("userId")
	AdminGetUserBanV3Cmd.Flags().BoolP("activeOnly", "ay", false, "Active only")
	AdminGetUserBanV3Cmd.Flags().StringP("after", "ar", "0", "After")
	AdminGetUserBanV3Cmd.Flags().StringP("before", "be", "0", "Before")
	AdminGetUserBanV3Cmd.Flags().Int64P("limit", "lt", 20, "Limit")
}
