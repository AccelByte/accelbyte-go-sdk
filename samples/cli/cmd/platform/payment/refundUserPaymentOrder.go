// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

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

// refundUserPaymentOrderCmd represents the refundUserPaymentOrder command
var refundUserPaymentOrderCmd = &cobra.Command{
	Use:   "refundUserPaymentOrder",
	Short: "Refund user payment order",
	Long:  `Refund user payment order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentService := &platform.PaymentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PaymentOrderRefund
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &payment.RefundUserPaymentOrderParams{
			Body:           body,
			Namespace:      namespace,
			PaymentOrderNo: paymentOrderNo,
			UserID:         userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentService.RefundUserPaymentOrder(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(refundUserPaymentOrderCmd)
	refundUserPaymentOrderCmd.Flags().StringP("body", "b", " ", "Body")
	refundUserPaymentOrderCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = refundUserPaymentOrderCmd.MarkFlagRequired("namespace")
	refundUserPaymentOrderCmd.Flags().StringP("paymentOrderNo", "p", " ", "Payment order no")
	_ = refundUserPaymentOrderCmd.MarkFlagRequired("paymentOrderNo")
	refundUserPaymentOrderCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = refundUserPaymentOrderCmd.MarkFlagRequired("userId")
}
