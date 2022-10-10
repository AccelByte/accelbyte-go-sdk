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

// AdminGetDevicesByUserV4Cmd represents the AdminGetDevicesByUserV4 command
var AdminGetDevicesByUserV4Cmd = &cobra.Command{
	Use:   "adminGetDevicesByUserV4",
	Short: "Admin get devices by user V4",
	Long:  `Admin get devices by user V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		devicesV4Service := &iam.DevicesV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &devices_v4.AdminGetDevicesByUserV4Params{
			Namespace: namespace,
			UserID:    &userId,
		}
		ok, err := devicesV4Service.AdminGetDevicesByUserV4Short(input)
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
	AdminGetDevicesByUserV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetDevicesByUserV4Cmd.MarkFlagRequired("namespace")
	AdminGetDevicesByUserV4Cmd.Flags().String("userId", "", "User id")
}
