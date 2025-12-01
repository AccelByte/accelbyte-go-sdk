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
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &users.PublicGetUserBanHistoryV3Params{
			Namespace:  namespace,
			UserID:     userId,
			ActiveOnly: &activeOnly,
			Limit:      &limit,
			Offset:     &offset,
		}
		ok, errOK := usersService.PublicGetUserBanHistoryV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserBanHistoryV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserBanHistoryV3Cmd.MarkFlagRequired("namespace")
	PublicGetUserBanHistoryV3Cmd.Flags().String("userId", "", "User id")
	_ = PublicGetUserBanHistoryV3Cmd.MarkFlagRequired("userId")
	PublicGetUserBanHistoryV3Cmd.Flags().Bool("activeOnly", false, "Active only")
	PublicGetUserBanHistoryV3Cmd.Flags().Int64("limit", 20, "Limit")
	PublicGetUserBanHistoryV3Cmd.Flags().Int64("offset", 0, "Offset")
}
