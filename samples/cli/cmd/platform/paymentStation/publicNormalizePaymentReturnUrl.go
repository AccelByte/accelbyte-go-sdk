// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package paymentStation

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicNormalizePaymentReturnUrlCmd represents the PublicNormalizePaymentReturnUrl command
var PublicNormalizePaymentReturnUrlCmd = &cobra.Command{
	Use:   "PublicNormalizePaymentReturnUrl",
	Short: "Public normalize payment return url",
	Long:  `Public normalize payment return url`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		paymentProvider, _ := cmd.Flags().GetString("paymentProvider")
		returnUrl, _ := cmd.Flags().GetString("returnUrl")
		payerID, _ := cmd.Flags().GetString("payerID")
		foreinginvoice, _ := cmd.Flags().GetString("foreinginvoice")
		invoiceId, _ := cmd.Flags().GetString("invoiceId")
		payload, _ := cmd.Flags().GetString("payload")
		resultCode, _ := cmd.Flags().GetString("resultCode")
		status, _ := cmd.Flags().GetString("status")
		token, _ := cmd.Flags().GetString("token")
		type_, _ := cmd.Flags().GetString("type")
		userId, _ := cmd.Flags().GetString("userId")
		input := &payment_station.PublicNormalizePaymentReturnURLParams{
			Namespace:       namespace,
			PayerID:         &payerID,
			Foreinginvoice:  &foreinginvoice,
			InvoiceID:       &invoiceId,
			Payload:         &payload,
			ResultCode:      &resultCode,
			Status:          &status,
			Token:           &token,
			Type:            &type_,
			UserID:          &userId,
			OrderNo:         orderNo,
			PaymentOrderNo:  paymentOrderNo,
			PaymentProvider: paymentProvider,
			ReturnURL:       returnUrl,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := paymentStationService.PublicNormalizePaymentReturnURL(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PublicNormalizePaymentReturnUrlCmd.MarkFlagRequired("namespace")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("PayerID", "PD", " ", "Payer ID")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("foreinginvoice", "fe", " ", "Foreinginvoice")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("invoice_id", "id", " ", "Invoice id")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("payload", "pd", " ", "Payload")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("resultCode", "re", " ", "Result code")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("status", "ss", " ", "Status")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("token", "tn", " ", "Token")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("type", "te", " ", "Type")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("user_id", "ud", " ", "User id")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("orderNo", "oo", " ", "Order no")
	_ = PublicNormalizePaymentReturnUrlCmd.MarkFlagRequired("orderNo")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("paymentOrderNo", "po", " ", "Payment order no")
	_ = PublicNormalizePaymentReturnUrlCmd.MarkFlagRequired("paymentOrderNo")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("paymentProvider", "pr", " ", "Payment provider")
	_ = PublicNormalizePaymentReturnUrlCmd.MarkFlagRequired("paymentProvider")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("returnUrl", "rl", " ", "Return url")
	_ = PublicNormalizePaymentReturnUrlCmd.MarkFlagRequired("returnUrl")
}
