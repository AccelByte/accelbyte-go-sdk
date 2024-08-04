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

// AdminListAllDistinctPlatformAccountsV3Cmd represents the AdminListAllDistinctPlatformAccountsV3 command
var AdminListAllDistinctPlatformAccountsV3Cmd = &cobra.Command{
	Use:   "adminListAllDistinctPlatformAccountsV3",
	Short: "Admin list all distinct platform accounts V3",
	Long:  `Admin list all distinct platform accounts V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		status, _ := cmd.Flags().GetString("status")
		input := &users.AdminListAllDistinctPlatformAccountsV3Params{
			Namespace: namespace,
			UserID:    userId,
			Status:    &status,
		}
		ok, errOK := usersService.AdminListAllDistinctPlatformAccountsV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListAllDistinctPlatformAccountsV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListAllDistinctPlatformAccountsV3Cmd.MarkFlagRequired("namespace")
	AdminListAllDistinctPlatformAccountsV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminListAllDistinctPlatformAccountsV3Cmd.MarkFlagRequired("userId")
	AdminListAllDistinctPlatformAccountsV3Cmd.Flags().String("status", "", "Status")
}
