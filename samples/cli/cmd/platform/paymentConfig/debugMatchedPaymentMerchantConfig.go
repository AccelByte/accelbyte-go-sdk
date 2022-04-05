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

// DebugMatchedPaymentMerchantConfigCmd represents the DebugMatchedPaymentMerchantConfig command
var DebugMatchedPaymentMerchantConfigCmd = &cobra.Command{
	Use:   "debugMatchedPaymentMerchantConfig",
	Short: "Debug matched payment merchant config",
	Long:  `Debug matched payment merchant config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		region, _ := cmd.Flags().GetString("region")
		input := &payment_config.DebugMatchedPaymentMerchantConfigParams{
			Namespace: &namespace,
			Region:    &region,
		}
		ok, err := paymentConfigService.DebugMatchedPaymentMerchantConfigShort(input)
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
	DebugMatchedPaymentMerchantConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	DebugMatchedPaymentMerchantConfigCmd.Flags().StringP("region", "", "", "Region")
}
