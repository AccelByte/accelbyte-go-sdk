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

// PublicDisableMyAuthenticatorV4Cmd represents the PublicDisableMyAuthenticatorV4 command
var PublicDisableMyAuthenticatorV4Cmd = &cobra.Command{
	Use:   "publicDisableMyAuthenticatorV4",
	Short: "Public disable my authenticator V4",
	Long:  `Public disable my authenticator V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicDisableMyAuthenticatorV4Params{
			Namespace: namespace,
		}
		errNoContent := usersV4Service.PublicDisableMyAuthenticatorV4Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicDisableMyAuthenticatorV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDisableMyAuthenticatorV4Cmd.MarkFlagRequired("namespace")
}
