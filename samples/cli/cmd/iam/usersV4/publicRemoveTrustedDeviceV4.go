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

// PublicRemoveTrustedDeviceV4Cmd represents the PublicRemoveTrustedDeviceV4 command
var PublicRemoveTrustedDeviceV4Cmd = &cobra.Command{
	Use:   "publicRemoveTrustedDeviceV4",
	Short: "Public remove trusted device V4",
	Long:  `Public remove trusted device V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		cookie, _ := cmd.Flags().GetString("cookie")
		input := &users_v4.PublicRemoveTrustedDeviceV4Params{
			Cookie:    &cookie,
			Namespace: namespace,
		}
		errNoContent := usersV4Service.PublicRemoveTrustedDeviceV4Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicRemoveTrustedDeviceV4Cmd.Flags().String("cookie", "", "Cookie")
	PublicRemoveTrustedDeviceV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicRemoveTrustedDeviceV4Cmd.MarkFlagRequired("namespace")
}
