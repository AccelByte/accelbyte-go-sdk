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

// PublicEnableBackupCodesV4Cmd represents the PublicEnableBackupCodesV4 command
var PublicEnableBackupCodesV4Cmd = &cobra.Command{
	Use:   "publicEnableBackupCodesV4",
	Short: "Public enable backup codes V4",
	Long:  `Public enable backup codes V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		languageTag, _ := cmd.Flags().GetString("languageTag")
		input := &users_v4.PublicEnableBackupCodesV4Params{
			Namespace:   namespace,
			LanguageTag: &languageTag,
		}
		errNoContent := usersV4Service.PublicEnableBackupCodesV4Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicEnableBackupCodesV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicEnableBackupCodesV4Cmd.MarkFlagRequired("namespace")
	PublicEnableBackupCodesV4Cmd.Flags().String("languageTag", "", "Language tag")
}
