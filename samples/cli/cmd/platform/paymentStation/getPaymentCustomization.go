// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getPaymentCustomizationCmd represents the getPaymentCustomization command
var getPaymentCustomizationCmd = &cobra.Command{
	Use:   "getPaymentCustomization",
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
	cmd.RootCmd.AddCommand(getPaymentCustomizationCmd)
	getPaymentCustomizationCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getPaymentCustomizationCmd.MarkFlagRequired("namespace")
	getPaymentCustomizationCmd.Flags().BoolP("sandbox", "s", false, "Sandbox")
	getPaymentCustomizationCmd.Flags().StringP("paymentProvider", "p", " ", "Payment provider")
	_ = getPaymentCustomizationCmd.MarkFlagRequired("paymentProvider")
	getPaymentCustomizationCmd.Flags().StringP("region", "r", " ", "Region")
	_ = getPaymentCustomizationCmd.MarkFlagRequired("region")
}
