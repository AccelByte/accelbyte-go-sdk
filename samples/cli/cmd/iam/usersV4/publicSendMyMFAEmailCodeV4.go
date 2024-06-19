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

// PublicSendMyMFAEmailCodeV4Cmd represents the PublicSendMyMFAEmailCodeV4 command
var PublicSendMyMFAEmailCodeV4Cmd = &cobra.Command{
	Use:   "publicSendMyMFAEmailCodeV4",
	Short: "Public send my MFA email code V4",
	Long:  `Public send my MFA email code V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		action, _ := cmd.Flags().GetString("action")
		input := &users_v4.PublicSendMyMFAEmailCodeV4Params{
			Action:    &action,
			Namespace: namespace,
		}
		errNoContent := usersV4Service.PublicSendMyMFAEmailCodeV4Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicSendMyMFAEmailCodeV4Cmd.Flags().String("action", "-1", "Action")
	PublicSendMyMFAEmailCodeV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicSendMyMFAEmailCodeV4Cmd.MarkFlagRequired("namespace")
}
