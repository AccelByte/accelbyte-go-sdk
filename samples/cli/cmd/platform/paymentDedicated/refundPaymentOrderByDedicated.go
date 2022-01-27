// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
	Use:   "RefundPaymentOrderByDedicated",
	Short: "Refund payment order by dedicated",
	Long:  `Refund payment order by dedicated`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentDedicatedService := &platform.PaymentDedicatedService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PaymentOrderRefund
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &payment_dedicated.RefundPaymentOrderByDedicatedParams{
			Body:           body,
			Namespace:      namespace,
			PaymentOrderNo: paymentOrderNo,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentDedicatedService.RefundPaymentOrderByDedicated(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	RefundPaymentOrderByDedicatedCmd.Flags().StringP("body", "by", " ", "Body")
	RefundPaymentOrderByDedicatedCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = RefundPaymentOrderByDedicatedCmd.MarkFlagRequired("namespace")
	RefundPaymentOrderByDedicatedCmd.Flags().StringP("paymentOrderNo", "po", " ", "Payment order no")
	_ = RefundPaymentOrderByDedicatedCmd.MarkFlagRequired("paymentOrderNo")
}
