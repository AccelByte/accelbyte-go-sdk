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

// PublicGetUserBanHistoryV3Cmd represents the PublicGetUserBanHistoryV3 command
var PublicGetUserBanHistoryV3Cmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	PublicGetUserBanHistoryV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetUserBanHistoryV3Cmd.MarkFlagRequired("namespace")
	PublicGetUserBanHistoryV3Cmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGetUserBanHistoryV3Cmd.MarkFlagRequired("userId")
	PublicGetUserBanHistoryV3Cmd.Flags().BoolP("activeOnly", "", false, "Active only")
	PublicGetUserBanHistoryV3Cmd.Flags().StringP("after", "", "0", "After")
	PublicGetUserBanHistoryV3Cmd.Flags().StringP("before", "", "0", "Before")
	PublicGetUserBanHistoryV3Cmd.Flags().Int64P("limit", "", 20, "Limit")
}
