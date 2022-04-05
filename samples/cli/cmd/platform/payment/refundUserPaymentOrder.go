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
		ok, err := paymentService.RefundUserPaymentOrderShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	RefundUserPaymentOrderCmd.Flags().StringP("body", "", "", "Body")
	RefundUserPaymentOrderCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = RefundUserPaymentOrderCmd.MarkFlagRequired("namespace")
	RefundUserPaymentOrderCmd.Flags().StringP("paymentOrderNo", "", "", "Payment order no")
	_ = RefundUserPaymentOrderCmd.MarkFlagRequired("paymentOrderNo")
	RefundUserPaymentOrderCmd.Flags().StringP("userId", "", "", "User id")
	_ = RefundUserPaymentOrderCmd.MarkFlagRequired("userId")
}
