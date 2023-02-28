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

// PublicEnableMyEmailV4Cmd represents the PublicEnableMyEmailV4 command
var PublicEnableMyEmailV4Cmd = &cobra.Command{
	Use:   "publicEnableMyEmailV4",
	Short: "Public enable my email V4",
	Long:  `Public enable my email V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicEnableMyEmailV4Params{
			Code:      code,
			Namespace: namespace,
		}
		errNoContent := usersV4Service.PublicEnableMyEmailV4Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicEnableMyEmailV4Cmd.Flags().String("code", "", "Code")
	_ = PublicEnableMyEmailV4Cmd.MarkFlagRequired("code")
	PublicEnableMyEmailV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicEnableMyEmailV4Cmd.MarkFlagRequired("namespace")
}
