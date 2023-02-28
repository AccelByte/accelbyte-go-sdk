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

// AdminDecryptDeviceV4Cmd represents the AdminDecryptDeviceV4 command
var AdminDecryptDeviceV4Cmd = &cobra.Command{
	Use:   "adminDecryptDeviceV4",
	Short: "Admin decrypt device V4",
	Long:  `Admin decrypt device V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		devicesV4Service := &iam.DevicesV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deviceId, _ := cmd.Flags().GetString("deviceId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &devices_v4.AdminDecryptDeviceV4Params{
			DeviceID:  deviceId,
			Namespace: namespace,
		}
		ok, errOK := devicesV4Service.AdminDecryptDeviceV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminDecryptDeviceV4Cmd.Flags().String("deviceId", "", "Device id")
	_ = AdminDecryptDeviceV4Cmd.MarkFlagRequired("deviceId")
	AdminDecryptDeviceV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDecryptDeviceV4Cmd.MarkFlagRequired("namespace")
}
