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

// AdminUpdateDeviceBanV4Cmd represents the AdminUpdateDeviceBanV4 command
var AdminUpdateDeviceBanV4Cmd = &cobra.Command{
	Use:   "adminUpdateDeviceBanV4",
	Short: "Admin update device ban V4",
	Long:  `Admin update device ban V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		devicesV4Service := &iam.DevicesV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelDeviceBanUpdateRequestV4
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		banId, _ := cmd.Flags().GetString("banId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &devices_v4.AdminUpdateDeviceBanV4Params{
			Body:      body,
			BanID:     banId,
			Namespace: namespace,
		}
		errInput := devicesV4Service.AdminUpdateDeviceBanV4Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminUpdateDeviceBanV4Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateDeviceBanV4Cmd.MarkFlagRequired("body")
	AdminUpdateDeviceBanV4Cmd.Flags().String("banId", "", "Ban id")
	_ = AdminUpdateDeviceBanV4Cmd.MarkFlagRequired("banId")
	AdminUpdateDeviceBanV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateDeviceBanV4Cmd.MarkFlagRequired("namespace")
}
