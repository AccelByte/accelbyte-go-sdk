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

// PublicGetPaymentMethodsCmd represents the PublicGetPaymentMethods command
var PublicGetPaymentMethodsCmd = &cobra.Command{
	Use:   "publicGetPaymentMethods",
	Short: "Public get payment methods",
	Long:  `Public get payment methods`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		input := &payment_station.PublicGetPaymentMethodsParams{
			Namespace:      namespace,
			PaymentOrderNo: paymentOrderNo,
		}
		ok, errOK := paymentStationService.PublicGetPaymentMethodsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetPaymentMethodsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetPaymentMethodsCmd.MarkFlagRequired("namespace")
	PublicGetPaymentMethodsCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	_ = PublicGetPaymentMethodsCmd.MarkFlagRequired("paymentOrderNo")
}
