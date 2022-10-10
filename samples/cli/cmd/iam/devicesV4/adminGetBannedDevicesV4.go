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

// AdminGetBannedDevicesV4Cmd represents the AdminGetBannedDevicesV4 command
var AdminGetBannedDevicesV4Cmd = &cobra.Command{
	Use:   "adminGetBannedDevicesV4",
	Short: "Admin get banned devices V4",
	Long:  `Admin get banned devices V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		devicesV4Service := &iam.DevicesV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		deviceType, _ := cmd.Flags().GetString("deviceType")
		endDate, _ := cmd.Flags().GetString("endDate")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		startDate, _ := cmd.Flags().GetString("startDate")
		input := &devices_v4.AdminGetBannedDevicesV4Params{
			Namespace:  namespace,
			DeviceType: &deviceType,
			EndDate:    &endDate,
			Limit:      &limit,
			Offset:     &offset,
			StartDate:  &startDate,
		}
		ok, err := devicesV4Service.AdminGetBannedDevicesV4Short(input)
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
	AdminGetBannedDevicesV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetBannedDevicesV4Cmd.MarkFlagRequired("namespace")
	AdminGetBannedDevicesV4Cmd.Flags().String("deviceType", "", "Device type")
	AdminGetBannedDevicesV4Cmd.Flags().String("endDate", "", "End date")
	AdminGetBannedDevicesV4Cmd.Flags().Int64("limit", 20, "Limit")
	AdminGetBannedDevicesV4Cmd.Flags().Int64("offset", 0, "Offset")
	AdminGetBannedDevicesV4Cmd.Flags().String("startDate", "", "Start date")
}
