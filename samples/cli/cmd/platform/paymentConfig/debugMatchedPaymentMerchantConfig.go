// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package paymentConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// debugMatchedPaymentMerchantConfigCmd represents the debugMatchedPaymentMerchantConfig command
var debugMatchedPaymentMerchantConfigCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentConfigService.DebugMatchedPaymentMerchantConfig(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(debugMatchedPaymentMerchantConfigCmd)
	debugMatchedPaymentMerchantConfigCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	debugMatchedPaymentMerchantConfigCmd.Flags().StringP("region", "rn", " ", "Region")
}
