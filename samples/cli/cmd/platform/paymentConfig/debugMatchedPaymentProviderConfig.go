// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentConfigService.DebugMatchedPaymentProviderConfig(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	DebugMatchedPaymentProviderConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	DebugMatchedPaymentProviderConfigCmd.Flags().StringP("region", "", "", "Region")
}
