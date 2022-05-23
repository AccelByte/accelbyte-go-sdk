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

// PublicEnableMyBackupCodesV4Cmd represents the PublicEnableMyBackupCodesV4 command
var PublicEnableMyBackupCodesV4Cmd = &cobra.Command{
	Use:   "publicEnableMyBackupCodesV4",
	Short: "Public enable my backup codes V4",
	Long:  `Public enable my backup codes V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicEnableMyBackupCodesV4Params{
			Namespace: namespace,
		}
		ok, err := usersV4Service.PublicEnableMyBackupCodesV4Short(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	PublicEnableMyBackupCodesV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicEnableMyBackupCodesV4Cmd.MarkFlagRequired("namespace")
}
