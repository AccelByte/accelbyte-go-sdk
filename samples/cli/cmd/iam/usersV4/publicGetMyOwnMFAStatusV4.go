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

// PublicGetMyOwnMFAStatusV4Cmd represents the PublicGetMyOwnMFAStatusV4 command
var PublicGetMyOwnMFAStatusV4Cmd = &cobra.Command{
	Use:   "publicGetMyOwnMFAStatusV4",
	Short: "Public get my own MFA status V4",
	Long:  `Public get my own MFA status V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicGetMyOwnMFAStatusV4Params{
			Namespace: namespace,
		}
		ok, errOK := usersV4Service.PublicGetMyOwnMFAStatusV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetMyOwnMFAStatusV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetMyOwnMFAStatusV4Cmd.MarkFlagRequired("namespace")
}
