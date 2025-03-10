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

// AdminEnableMyAuthenticatorV4Cmd represents the AdminEnableMyAuthenticatorV4 command
var AdminEnableMyAuthenticatorV4Cmd = &cobra.Command{
	Use:   "adminEnableMyAuthenticatorV4",
	Short: "Admin enable my authenticator V4",
	Long:  `Admin enable my authenticator V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		input := &users_v4.AdminEnableMyAuthenticatorV4Params{
			Code: code,
		}
		errNoContent := usersV4Service.AdminEnableMyAuthenticatorV4Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminEnableMyAuthenticatorV4Cmd.Flags().String("code", "", "Code")
	_ = AdminEnableMyAuthenticatorV4Cmd.MarkFlagRequired("code")
}
