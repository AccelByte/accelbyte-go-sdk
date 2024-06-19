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

// AdminEnableBackupCodesV4Cmd represents the AdminEnableBackupCodesV4 command
var AdminEnableBackupCodesV4Cmd = &cobra.Command{
	Use:   "adminEnableBackupCodesV4",
	Short: "Admin enable backup codes V4",
	Long:  `Admin enable backup codes V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		languageTag, _ := cmd.Flags().GetString("languageTag")
		input := &users_v4.AdminEnableBackupCodesV4Params{
			LanguageTag: &languageTag,
		}
		errOK := usersV4Service.AdminEnableBackupCodesV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminEnableBackupCodesV4Cmd.Flags().String("languageTag", "", "Language tag")
}
