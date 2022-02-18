// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package payment

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPaymentOrderChargeStatusCmd represents the GetPaymentOrderChargeStatus command
var GetPaymentOrderChargeStatusCmd = &cobra.Command{
	Use:   "getPaymentOrderChargeStatus",
	Short: "Get payment order charge status",
	Long:  `Get payment order charge status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentService := &platform.PaymentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		input := &payment.GetPaymentOrderChargeStatusParams{
			Namespace:      namespace,
			PaymentOrderNo: paymentOrderNo,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentService.GetPaymentOrderChargeStatus(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	GetPaymentOrderChargeStatusCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetPaymentOrderChargeStatusCmd.MarkFlagRequired("namespace")
	GetPaymentOrderChargeStatusCmd.Flags().StringP("paymentOrderNo", "", "", "Payment order no")
	_ = GetPaymentOrderChargeStatusCmd.MarkFlagRequired("paymentOrderNo")
}
