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

// AdminSendMyMFAEmailCodeV4Cmd represents the AdminSendMyMFAEmailCodeV4 command
var AdminSendMyMFAEmailCodeV4Cmd = &cobra.Command{
	Use:   "adminSendMyMFAEmailCodeV4",
	Short: "Admin send my MFA email code V4",
	Long:  `Admin send my MFA email code V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &users_v4.AdminSendMyMFAEmailCodeV4Params{}
		errInput := usersV4Service.AdminSendMyMFAEmailCodeV4Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
}
