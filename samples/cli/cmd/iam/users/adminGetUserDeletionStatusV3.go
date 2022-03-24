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
	Use:   "adminGetUserDeletionStatusV3",
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
		ok, err := usersService.AdminGetUserDeletionStatusV3Short(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	AdminGetUserDeletionStatusV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetUserDeletionStatusV3Cmd.MarkFlagRequired("namespace")
	AdminGetUserDeletionStatusV3Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminGetUserDeletionStatusV3Cmd.MarkFlagRequired("userId")
}
