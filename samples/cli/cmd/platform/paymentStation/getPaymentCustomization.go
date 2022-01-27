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

// GetPaymentCustomizationCmd represents the GetPaymentCustomization command
var GetPaymentCustomizationCmd = &cobra.Command{
	Use:   "GetPaymentCustomization",
	Short: "Get payment customization",
	Long:  `Get payment customization`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentProvider, _ := cmd.Flags().GetString("paymentProvider")
		region, _ := cmd.Flags().GetString("region")
		sandbox, _ := cmd.Flags().GetBool("sandbox")
		input := &payment_station.GetPaymentCustomizationParams{
			Namespace:       namespace,
			Sandbox:         &sandbox,
			PaymentProvider: paymentProvider,
			Region:          region,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentStationService.GetPaymentCustomization(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetPaymentCustomizationCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetPaymentCustomizationCmd.MarkFlagRequired("namespace")
	GetPaymentCustomizationCmd.Flags().BoolP("sandbox", "sx", false, "Sandbox")
	GetPaymentCustomizationCmd.Flags().StringP("paymentProvider", "pr", " ", "Payment provider")
	_ = GetPaymentCustomizationCmd.MarkFlagRequired("paymentProvider")
	GetPaymentCustomizationCmd.Flags().StringP("region", "rn", " ", "Region")
	_ = GetPaymentCustomizationCmd.MarkFlagRequired("region")
}
