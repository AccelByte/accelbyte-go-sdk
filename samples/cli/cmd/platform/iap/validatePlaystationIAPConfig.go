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

// ValidatePlaystationIAPConfigCmd represents the ValidatePlaystationIAPConfig command
var ValidatePlaystationIAPConfigCmd = &cobra.Command{
	Use:   "validatePlaystationIAPConfig",
	Short: "Validate playstation IAP config",
	Long:  `Validate playstation IAP config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PlaystationIAPConfigRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &iap.ValidatePlaystationIAPConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := iapService.ValidatePlaystationIAPConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ValidatePlaystationIAPConfigCmd.Flags().String("body", "", "Body")
	ValidatePlaystationIAPConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = ValidatePlaystationIAPConfigCmd.MarkFlagRequired("namespace")
}
