// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentDedicated

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_dedicated"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RefundPaymentOrderByDedicatedCmd represents the RefundPaymentOrderByDedicated command
var RefundPaymentOrderByDedicatedCmd = &cobra.Command{
	Use:   "refundPaymentOrderByDedicated",
	Short: "Refund payment order by dedicated",
	Long:  `Refund payment order by dedicated`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentDedicatedService := &platform.PaymentDedicatedService{
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
		input := &payment_dedicated.RefundPaymentOrderByDedicatedParams{
			Body:           body,
			Namespace:      namespace,
			PaymentOrderNo: paymentOrderNo,
		}
		ok, errOK := paymentDedicatedService.RefundPaymentOrderByDedicatedShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RefundPaymentOrderByDedicatedCmd.Flags().String("body", "", "Body")
	_ = RefundPaymentOrderByDedicatedCmd.MarkFlagRequired("body")
	RefundPaymentOrderByDedicatedCmd.Flags().String("namespace", "", "Namespace")
	_ = RefundPaymentOrderByDedicatedCmd.MarkFlagRequired("namespace")
	RefundPaymentOrderByDedicatedCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	_ = RefundPaymentOrderByDedicatedCmd.MarkFlagRequired("paymentOrderNo")
}
