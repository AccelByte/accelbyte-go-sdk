// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package loginAllowlist

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/login_allowlist"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetLoginAllowlistV3Cmd represents the AdminGetLoginAllowlistV3 command
var AdminGetLoginAllowlistV3Cmd = &cobra.Command{
	Use:   "adminGetLoginAllowlistV3",
	Short: "Admin get login allowlist V3",
	Long:  `Admin get login allowlist V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		loginAllowlistService := &iam.LoginAllowlistService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &login_allowlist.AdminGetLoginAllowlistV3Params{
			Namespace: namespace,
		}
		ok, errOK := loginAllowlistService.AdminGetLoginAllowlistV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetLoginAllowlistV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetLoginAllowlistV3Cmd.MarkFlagRequired("namespace")
}
