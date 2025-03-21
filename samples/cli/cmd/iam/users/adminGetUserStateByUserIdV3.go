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

// AdminGetUserStateByUserIdV3Cmd represents the AdminGetUserStateByUserIdV3 command
var AdminGetUserStateByUserIdV3Cmd = &cobra.Command{
	Use:   "adminGetUserStateByUserIdV3",
	Short: "Admin get user state by user id V3",
	Long:  `Admin get user state by user id V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminGetUserStateByUserIDV3Params{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.AdminGetUserStateByUserIDV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserStateByUserIdV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserStateByUserIdV3Cmd.MarkFlagRequired("namespace")
	AdminGetUserStateByUserIdV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserStateByUserIdV3Cmd.MarkFlagRequired("userId")
}
