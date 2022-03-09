// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package paymentStation

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPaymentPublicConfigCmd represents the GetPaymentPublicConfig command
var GetPaymentPublicConfigCmd = &cobra.Command{
	Use:   "getPaymentPublicConfig",
	Short: "Get payment public config",
	Long:  `Get payment public config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentProvider, _ := cmd.Flags().GetString("paymentProvider")
		region, _ := cmd.Flags().GetString("region")
		sandbox, _ := cmd.Flags().GetBool("sandbox")
		input := &payment_station.GetPaymentPublicConfigParams{
			Namespace:       namespace,
			Sandbox:         &sandbox,
			PaymentProvider: paymentProvider,
			Region:          region,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentStationService.GetPaymentPublicConfig(input)
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
	GetPaymentPublicConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetPaymentPublicConfigCmd.MarkFlagRequired("namespace")
	GetPaymentPublicConfigCmd.Flags().BoolP("sandbox", "", false, "Sandbox")
	GetPaymentPublicConfigCmd.Flags().StringP("paymentProvider", "", "", "Payment provider")
	_ = GetPaymentPublicConfigCmd.MarkFlagRequired("paymentProvider")
	GetPaymentPublicConfigCmd.Flags().StringP("region", "", "", "Region")
	_ = GetPaymentPublicConfigCmd.MarkFlagRequired("region")
}
