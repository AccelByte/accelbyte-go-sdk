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

// AdminGetUsersByDeviceV4Cmd represents the AdminGetUsersByDeviceV4 command
var AdminGetUsersByDeviceV4Cmd = &cobra.Command{
	Use:   "adminGetUsersByDeviceV4",
	Short: "Admin get users by device V4",
	Long:  `Admin get users by device V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		devicesV4Service := &iam.DevicesV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deviceId, _ := cmd.Flags().GetString("deviceId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &devices_v4.AdminGetUsersByDeviceV4Params{
			DeviceID:  deviceId,
			Namespace: namespace,
		}
		ok, errOK := devicesV4Service.AdminGetUsersByDeviceV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUsersByDeviceV4Cmd.Flags().String("deviceId", "", "Device id")
	_ = AdminGetUsersByDeviceV4Cmd.MarkFlagRequired("deviceId")
	AdminGetUsersByDeviceV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUsersByDeviceV4Cmd.MarkFlagRequired("namespace")
}
