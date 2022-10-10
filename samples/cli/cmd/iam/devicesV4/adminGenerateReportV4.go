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

// AdminGenerateReportV4Cmd represents the AdminGenerateReportV4 command
var AdminGenerateReportV4Cmd = &cobra.Command{
	Use:   "adminGenerateReportV4",
	Short: "Admin generate report V4",
	Long:  `Admin generate report V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		devicesV4Service := &iam.DevicesV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		deviceType, _ := cmd.Flags().GetString("deviceType")
		endDate, _ := cmd.Flags().GetString("endDate")
		startDate, _ := cmd.Flags().GetString("startDate")
		input := &devices_v4.AdminGenerateReportV4Params{
			Namespace:  namespace,
			EndDate:    &endDate,
			StartDate:  &startDate,
			DeviceType: deviceType,
		}
		errInput := devicesV4Service.AdminGenerateReportV4Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminGenerateReportV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGenerateReportV4Cmd.MarkFlagRequired("namespace")
	AdminGenerateReportV4Cmd.Flags().String("endDate", "", "End date")
	AdminGenerateReportV4Cmd.Flags().String("startDate", "", "Start date")
	AdminGenerateReportV4Cmd.Flags().String("deviceType", "", "Device type")
	_ = AdminGenerateReportV4Cmd.MarkFlagRequired("deviceType")
}
