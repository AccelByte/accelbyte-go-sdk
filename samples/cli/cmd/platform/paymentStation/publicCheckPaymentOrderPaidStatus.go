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

// PublicCheckPaymentOrderPaidStatusCmd represents the PublicCheckPaymentOrderPaidStatus command
var PublicCheckPaymentOrderPaidStatusCmd = &cobra.Command{
	Use:   "publicCheckPaymentOrderPaidStatus",
	Short: "Public check payment order paid status",
	Long:  `Public check payment order paid status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		input := &payment_station.PublicCheckPaymentOrderPaidStatusParams{
			Namespace:      namespace,
			PaymentOrderNo: paymentOrderNo,
		}
		ok, errOK := paymentStationService.PublicCheckPaymentOrderPaidStatusShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicCheckPaymentOrderPaidStatusCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCheckPaymentOrderPaidStatusCmd.MarkFlagRequired("namespace")
	PublicCheckPaymentOrderPaidStatusCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	_ = PublicCheckPaymentOrderPaidStatusCmd.MarkFlagRequired("paymentOrderNo")
}
