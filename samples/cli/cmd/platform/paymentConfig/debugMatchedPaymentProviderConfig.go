// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DebugMatchedPaymentProviderConfigCmd represents the DebugMatchedPaymentProviderConfig command
var DebugMatchedPaymentProviderConfigCmd = &cobra.Command{
	Use:   "debugMatchedPaymentProviderConfig",
	Short: "Debug matched payment provider config",
	Long:  `Debug matched payment provider config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		region, _ := cmd.Flags().GetString("region")
		input := &payment_config.DebugMatchedPaymentProviderConfigParams{
			Namespace: &namespace,
			Region:    &region,
		}
		ok, errOK := paymentConfigService.DebugMatchedPaymentProviderConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DebugMatchedPaymentProviderConfigCmd.Flags().String("namespace", "", "Namespace")
	DebugMatchedPaymentProviderConfigCmd.Flags().String("region", "", "Region")
}
