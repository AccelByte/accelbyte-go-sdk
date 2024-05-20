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

// AdminGetUserBanSummaryV3Cmd represents the AdminGetUserBanSummaryV3 command
var AdminGetUserBanSummaryV3Cmd = &cobra.Command{
	Use:   "adminGetUserBanSummaryV3",
	Short: "Admin get user ban summary V3",
	Long:  `Admin get user ban summary V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminGetUserBanSummaryV3Params{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.AdminGetUserBanSummaryV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserBanSummaryV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserBanSummaryV3Cmd.MarkFlagRequired("namespace")
	AdminGetUserBanSummaryV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserBanSummaryV3Cmd.MarkFlagRequired("userId")
}
