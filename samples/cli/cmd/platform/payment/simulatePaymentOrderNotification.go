// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SimulatePaymentOrderNotificationCmd represents the SimulatePaymentOrderNotification command
var SimulatePaymentOrderNotificationCmd = &cobra.Command{
	Use:   "simulatePaymentOrderNotification",
	Short: "Simulate payment order notification",
	Long:  `Simulate payment order notification`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentService := &platform.PaymentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PaymentOrderNotifySimulation
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &payment.SimulatePaymentOrderNotificationParams{
			Body:           body,
			Namespace:      namespace,
			PaymentOrderNo: paymentOrderNo,
		}
		ok, errOK := paymentService.SimulatePaymentOrderNotificationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SimulatePaymentOrderNotificationCmd.Flags().String("body", "", "Body")
	SimulatePaymentOrderNotificationCmd.Flags().String("namespace", "", "Namespace")
	_ = SimulatePaymentOrderNotificationCmd.MarkFlagRequired("namespace")
	SimulatePaymentOrderNotificationCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	_ = SimulatePaymentOrderNotificationCmd.MarkFlagRequired("paymentOrderNo")
}
