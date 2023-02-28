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

// ChargePaymentOrderCmd represents the ChargePaymentOrder command
var ChargePaymentOrderCmd = &cobra.Command{
	Use:   "chargePaymentOrder",
	Short: "Charge payment order",
	Long:  `Charge payment order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentService := &platform.PaymentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PaymentOrderChargeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &payment.ChargePaymentOrderParams{
			Body:           body,
			Namespace:      namespace,
			PaymentOrderNo: paymentOrderNo,
		}
		ok, errOK := paymentService.ChargePaymentOrderShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ChargePaymentOrderCmd.Flags().String("body", "", "Body")
	ChargePaymentOrderCmd.Flags().String("namespace", "", "Namespace")
	_ = ChargePaymentOrderCmd.MarkFlagRequired("namespace")
	ChargePaymentOrderCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	_ = ChargePaymentOrderCmd.MarkFlagRequired("paymentOrderNo")
}
