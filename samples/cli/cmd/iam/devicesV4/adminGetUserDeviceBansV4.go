// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package devicesV4

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/devices_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetUserDeviceBansV4Cmd represents the AdminGetUserDeviceBansV4 command
var AdminGetUserDeviceBansV4Cmd = &cobra.Command{
	Use:   "adminGetUserDeviceBansV4",
	Short: "Admin get user device bans V4",
	Long:  `Admin get user device bans V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		devicesV4Service := &iam.DevicesV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &devices_v4.AdminGetUserDeviceBansV4Params{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := devicesV4Service.AdminGetUserDeviceBansV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserDeviceBansV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserDeviceBansV4Cmd.MarkFlagRequired("namespace")
	AdminGetUserDeviceBansV4Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserDeviceBansV4Cmd.MarkFlagRequired("userId")
}
