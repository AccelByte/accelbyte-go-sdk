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

// GetUserBanHistoryCmd represents the GetUserBanHistory command
var GetUserBanHistoryCmd = &cobra.Command{
	Use:   "getUserBanHistory",
	Short: "Get user ban history",
	Long:  `Get user ban history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.GetUserBanHistoryParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.GetUserBanHistoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserBanHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserBanHistoryCmd.MarkFlagRequired("namespace")
	GetUserBanHistoryCmd.Flags().String("userId", "", "User id")
	_ = GetUserBanHistoryCmd.MarkFlagRequired("userId")
}
