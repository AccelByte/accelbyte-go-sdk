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

// publicGetUnpaidPaymentOrderCmd represents the publicGetUnpaidPaymentOrder command
var publicGetUnpaidPaymentOrderCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentStationService.PublicGetUnpaidPaymentOrder(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUnpaidPaymentOrderCmd)
	publicGetUnpaidPaymentOrderCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetUnpaidPaymentOrderCmd.MarkFlagRequired("namespace")
	publicGetUnpaidPaymentOrderCmd.Flags().StringP("paymentOrderNo", "p", " ", "Payment order no")
	_ = publicGetUnpaidPaymentOrderCmd.MarkFlagRequired("paymentOrderNo")
}
