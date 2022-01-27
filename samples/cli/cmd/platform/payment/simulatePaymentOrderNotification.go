// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package payment

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// simulatePaymentOrderNotificationCmd represents the simulatePaymentOrderNotification command
var simulatePaymentOrderNotificationCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentService.SimulatePaymentOrderNotification(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(simulatePaymentOrderNotificationCmd)
	simulatePaymentOrderNotificationCmd.Flags().StringP("body", "by", " ", "Body")
	simulatePaymentOrderNotificationCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = simulatePaymentOrderNotificationCmd.MarkFlagRequired("namespace")
	simulatePaymentOrderNotificationCmd.Flags().StringP("paymentOrderNo", "po", " ", "Payment order no")
	_ = simulatePaymentOrderNotificationCmd.MarkFlagRequired("paymentOrderNo")
}
