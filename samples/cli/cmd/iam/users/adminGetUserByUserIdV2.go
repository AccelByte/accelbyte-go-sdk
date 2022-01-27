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

// AdminGetUserByUserIdV2Cmd represents the AdminGetUserByUserIdV2 command
var AdminGetUserByUserIdV2Cmd = &cobra.Command{
	Use:   "AdminGetUserByUserIdV2",
	Short: "Admin get user by user id V2",
	Long:  `Admin get user by user id V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminGetUserByUserIDV2Params{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminGetUserByUserIDV2(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminGetUserByUserIdV2Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminGetUserByUserIdV2Cmd.MarkFlagRequired("namespace")
	AdminGetUserByUserIdV2Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = AdminGetUserByUserIdV2Cmd.MarkFlagRequired("userId")
}
