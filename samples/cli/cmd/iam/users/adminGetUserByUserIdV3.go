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

// AdminGetUserByUserIdV3Cmd represents the AdminGetUserByUserIdV3 command
var AdminGetUserByUserIdV3Cmd = &cobra.Command{
	Use:   "adminGetUserByUserIdV3",
	Short: "Admin get user by user id V3",
	Long:  `Admin get user by user id V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminGetUserByUserIDV3Params{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.AdminGetUserByUserIDV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserByUserIdV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserByUserIdV3Cmd.MarkFlagRequired("namespace")
	AdminGetUserByUserIdV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserByUserIdV3Cmd.MarkFlagRequired("userId")
}
