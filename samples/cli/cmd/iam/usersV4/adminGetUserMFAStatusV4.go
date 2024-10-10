// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetUserMFAStatusV4Cmd represents the AdminGetUserMFAStatusV4 command
var AdminGetUserMFAStatusV4Cmd = &cobra.Command{
	Use:   "adminGetUserMFAStatusV4",
	Short: "Admin get user MFA status V4",
	Long:  `Admin get user MFA status V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users_v4.AdminGetUserMFAStatusV4Params{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersV4Service.AdminGetUserMFAStatusV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserMFAStatusV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserMFAStatusV4Cmd.MarkFlagRequired("namespace")
	AdminGetUserMFAStatusV4Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserMFAStatusV4Cmd.MarkFlagRequired("userId")
}
