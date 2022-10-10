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

// AdminGetDeviceTypesV4Cmd represents the AdminGetDeviceTypesV4 command
var AdminGetDeviceTypesV4Cmd = &cobra.Command{
	Use:   "adminGetDeviceTypesV4",
	Short: "Admin get device types V4",
	Long:  `Admin get device types V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		devicesV4Service := &iam.DevicesV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &devices_v4.AdminGetDeviceTypesV4Params{
			Namespace: namespace,
		}
		ok, err := devicesV4Service.AdminGetDeviceTypesV4Short(input)
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
	AdminGetDeviceTypesV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetDeviceTypesV4Cmd.MarkFlagRequired("namespace")
}
