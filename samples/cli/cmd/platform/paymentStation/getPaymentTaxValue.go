// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentStation

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPaymentTaxValueCmd represents the GetPaymentTaxValue command
var GetPaymentTaxValueCmd = &cobra.Command{
	Use:   "getPaymentTaxValue",
	Short: "Get payment tax value",
	Long:  `Get payment tax value`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		paymentProvider, _ := cmd.Flags().GetString("paymentProvider")
		zipCode, _ := cmd.Flags().GetString("zipCode")
		input := &payment_station.GetPaymentTaxValueParams{
			Namespace:       namespace,
			ZipCode:         &zipCode,
			PaymentOrderNo:  paymentOrderNo,
			PaymentProvider: paymentProvider,
		}
		ok, err := paymentStationService.GetPaymentTaxValueShort(input)
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
	GetPaymentTaxValueCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPaymentTaxValueCmd.MarkFlagRequired("namespace")
	GetPaymentTaxValueCmd.Flags().String("zipCode", "", "Zip code")
	GetPaymentTaxValueCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	_ = GetPaymentTaxValueCmd.MarkFlagRequired("paymentOrderNo")
	GetPaymentTaxValueCmd.Flags().String("paymentProvider", "", "Payment provider")
	_ = GetPaymentTaxValueCmd.MarkFlagRequired("paymentProvider")
}
