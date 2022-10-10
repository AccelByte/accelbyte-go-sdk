// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package devicesV4

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/devices_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminBanDeviceV4Cmd represents the AdminBanDeviceV4 command
var AdminBanDeviceV4Cmd = &cobra.Command{
	Use:   "adminBanDeviceV4",
	Short: "Admin ban device V4",
	Long:  `Admin ban device V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		devicesV4Service := &iam.DevicesV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelDeviceBanRequestV4
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &devices_v4.AdminBanDeviceV4Params{
			Body:      body,
			Namespace: namespace,
		}
		errInput := devicesV4Service.AdminBanDeviceV4Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminBanDeviceV4Cmd.Flags().String("body", "", "Body")
	_ = AdminBanDeviceV4Cmd.MarkFlagRequired("body")
	AdminBanDeviceV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBanDeviceV4Cmd.MarkFlagRequired("namespace")
}
