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

// AdminGetUserDeletionStatusV3Cmd represents the AdminGetUserDeletionStatusV3 command
var AdminGetUserDeletionStatusV3Cmd = &cobra.Command{
	Use:   "AdminGetUserDeletionStatusV3",
	Short: "Admin get user deletion status V3",
	Long:  `Admin get user deletion status V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminGetUserDeletionStatusV3Params{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminGetUserDeletionStatusV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminGetUserDeletionStatusV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminGetUserDeletionStatusV3Cmd.MarkFlagRequired("namespace")
	AdminGetUserDeletionStatusV3Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = AdminGetUserDeletionStatusV3Cmd.MarkFlagRequired("userId")
}
