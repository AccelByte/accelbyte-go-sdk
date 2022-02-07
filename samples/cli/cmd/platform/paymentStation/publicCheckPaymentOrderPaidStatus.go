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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentStationService.PublicCheckPaymentOrderPaidStatus(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicCheckPaymentOrderPaidStatusCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicCheckPaymentOrderPaidStatusCmd.MarkFlagRequired("namespace")
	PublicCheckPaymentOrderPaidStatusCmd.Flags().StringP("paymentOrderNo", "", "", "Payment order no")
	_ = PublicCheckPaymentOrderPaidStatusCmd.MarkFlagRequired("paymentOrderNo")
}
