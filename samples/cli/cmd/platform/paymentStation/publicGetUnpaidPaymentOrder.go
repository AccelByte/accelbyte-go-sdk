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

// PublicGetUnpaidPaymentOrderCmd represents the PublicGetUnpaidPaymentOrder command
var PublicGetUnpaidPaymentOrderCmd = &cobra.Command{
	Use:   "publicGetUnpaidPaymentOrder",
	Short: "Public get unpaid payment order",
	Long:  `Public get unpaid payment order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		input := &payment_station.PublicGetUnpaidPaymentOrderParams{
			Namespace:      namespace,
			PaymentOrderNo: paymentOrderNo,
		}
		ok, errOK := paymentStationService.PublicGetUnpaidPaymentOrderShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUnpaidPaymentOrderCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUnpaidPaymentOrderCmd.MarkFlagRequired("namespace")
	PublicGetUnpaidPaymentOrderCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	_ = PublicGetUnpaidPaymentOrderCmd.MarkFlagRequired("paymentOrderNo")
}
