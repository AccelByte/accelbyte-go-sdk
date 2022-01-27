// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package paymentStation

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetPaymentMethodsCmd represents the publicGetPaymentMethods command
var publicGetPaymentMethodsCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentStationService.PublicGetPaymentMethods(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetPaymentMethodsCmd)
	publicGetPaymentMethodsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetPaymentMethodsCmd.MarkFlagRequired("namespace")
	publicGetPaymentMethodsCmd.Flags().StringP("paymentOrderNo", "po", " ", "Payment order no")
	_ = publicGetPaymentMethodsCmd.MarkFlagRequired("paymentOrderNo")
}
