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

// publicGetUserBanHistoryV3Cmd represents the publicGetUserBanHistoryV3 command
var publicGetUserBanHistoryV3Cmd = &cobra.Command{
	Use:   "publicGetUserBanHistoryV3",
	Short: "Public get user ban history V3",
	Long:  `Public get user ban history V3`,
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
		input := &users.PublicGetUserBanHistoryV3Params{
			Namespace:  namespace,
			UserID:     userId,
			ActiveOnly: &activeOnly,
			After:      &after,
			Before:     &before,
			Limit:      &limit,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.PublicGetUserBanHistoryV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserBanHistoryV3Cmd)
	publicGetUserBanHistoryV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetUserBanHistoryV3Cmd.MarkFlagRequired("namespace")
	publicGetUserBanHistoryV3Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicGetUserBanHistoryV3Cmd.MarkFlagRequired("userId")
	publicGetUserBanHistoryV3Cmd.Flags().BoolP("activeOnly", "ay", false, "Active only")
	publicGetUserBanHistoryV3Cmd.Flags().StringP("after", "ar", "0", "After")
	publicGetUserBanHistoryV3Cmd.Flags().StringP("before", "be", "0", "Before")
	publicGetUserBanHistoryV3Cmd.Flags().Int64P("limit", "lt", 20, "Limit")
}
