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

// AdminDisableUserMFAV4Cmd represents the AdminDisableUserMFAV4 command
var AdminDisableUserMFAV4Cmd = &cobra.Command{
	Use:   "adminDisableUserMFAV4",
	Short: "Admin disable user MFAV4",
	Long:  `Admin disable user MFAV4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users_v4.AdminDisableUserMFAV4Params{
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := usersV4Service.AdminDisableUserMFAV4Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDisableUserMFAV4Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDisableUserMFAV4Cmd.MarkFlagRequired("namespace")
	AdminDisableUserMFAV4Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminDisableUserMFAV4Cmd.MarkFlagRequired("userId")
}
