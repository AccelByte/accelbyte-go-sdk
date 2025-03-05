// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminResetSteamJobTimeCmd represents the AdminResetSteamJobTime command
var AdminResetSteamJobTimeCmd = &cobra.Command{
	Use:   "adminResetSteamJobTime",
	Short: "Admin reset steam job time",
	Long:  `Admin reset steam job time`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.ResetJobRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &iap.AdminResetSteamJobTimeParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := iapService.AdminResetSteamJobTimeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminResetSteamJobTimeCmd.Flags().String("body", "", "Body")
	_ = AdminResetSteamJobTimeCmd.MarkFlagRequired("body")
	AdminResetSteamJobTimeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminResetSteamJobTimeCmd.MarkFlagRequired("namespace")
}
