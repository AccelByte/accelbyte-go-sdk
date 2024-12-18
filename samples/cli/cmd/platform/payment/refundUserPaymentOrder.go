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

// RefundUserPaymentOrderCmd represents the RefundUserPaymentOrder command
var RefundUserPaymentOrderCmd = &cobra.Command{
	Use:   "refundUserPaymentOrder",
	Short: "Refund user payment order",
	Long:  `Refund user payment order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentService := &platform.PaymentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PaymentOrderRefund
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		userId, _ := cmd.Flags().GetString("userId")
		input := &payment.RefundUserPaymentOrderParams{
			Body:           body,
			Namespace:      namespace,
			PaymentOrderNo: paymentOrderNo,
			UserID:         userId,
		}
		ok, errOK := paymentService.RefundUserPaymentOrderShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RefundUserPaymentOrderCmd.Flags().String("body", "", "Body")
	_ = RefundUserPaymentOrderCmd.MarkFlagRequired("body")
	RefundUserPaymentOrderCmd.Flags().String("namespace", "", "Namespace")
	_ = RefundUserPaymentOrderCmd.MarkFlagRequired("namespace")
	RefundUserPaymentOrderCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	_ = RefundUserPaymentOrderCmd.MarkFlagRequired("paymentOrderNo")
	RefundUserPaymentOrderCmd.Flags().String("userId", "", "User id")
	_ = RefundUserPaymentOrderCmd.MarkFlagRequired("userId")
}
