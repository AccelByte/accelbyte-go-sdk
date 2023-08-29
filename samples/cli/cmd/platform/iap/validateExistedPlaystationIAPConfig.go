// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ValidateExistedPlaystationIAPConfigCmd represents the ValidateExistedPlaystationIAPConfig command
var ValidateExistedPlaystationIAPConfigCmd = &cobra.Command{
	Use:   "validateExistedPlaystationIAPConfig",
	Short: "Validate existed playstation IAP config",
	Long:  `Validate existed playstation IAP config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &iap.ValidateExistedPlaystationIAPConfigParams{
			Namespace: namespace,
		}
		ok, errOK := iapService.ValidateExistedPlaystationIAPConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ValidateExistedPlaystationIAPConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = ValidateExistedPlaystationIAPConfigCmd.MarkFlagRequired("namespace")
}
