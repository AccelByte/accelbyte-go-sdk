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

// GetUserLoginHistoriesCmd represents the GetUserLoginHistories command
var GetUserLoginHistoriesCmd = &cobra.Command{
	Use:   "getUserLoginHistories",
	Short: "Get user login histories",
	Long:  `Get user login histories`,
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
		input := &users.GetUserLoginHistoriesParams{
			Namespace: namespace,
			UserID:    userId,
			After:     &after,
			Before:    &before,
			Limit:     &limit,
		}
		ok, errOK := usersService.GetUserLoginHistoriesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserLoginHistoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserLoginHistoriesCmd.MarkFlagRequired("namespace")
	GetUserLoginHistoriesCmd.Flags().String("userId", "", "User id")
	_ = GetUserLoginHistoriesCmd.MarkFlagRequired("userId")
	GetUserLoginHistoriesCmd.Flags().Float64("after", 0, "After")
	GetUserLoginHistoriesCmd.Flags().Float64("before", 0, "Before")
	GetUserLoginHistoriesCmd.Flags().Int64("limit", 20, "Limit")
}
