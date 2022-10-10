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

// AdminUnbanDeviceV4Cmd represents the AdminUnbanDeviceV4 command
var AdminUnbanDeviceV4Cmd = &cobra.Command{
	Use:   "adminUnbanDeviceV4",
	Short: "Admin unban device V4",
	Long:  `Admin unban device V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		devicesV4Service := &iam.DevicesV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deviceId, _ := cmd.Flags().GetString("deviceId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &devices_v4.AdminUnbanDeviceV4Params{
			DeviceID:  deviceId,
			Namespace: namespace,
		}
		errInput := devicesV4Service.AdminUnbanDeviceV4Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminUnbanDeviceV4Cmd.Flags().String("deviceId", "", "Device id")
	_ = AdminUnbanDeviceV4Cmd.MarkFlagRequired("deviceId")
	AdminUnbanDeviceV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUnbanDeviceV4Cmd.MarkFlagRequired("namespace")
}
