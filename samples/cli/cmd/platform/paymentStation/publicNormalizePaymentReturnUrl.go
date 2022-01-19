// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicNormalizePaymentReturnUrlCmd represents the publicNormalizePaymentReturnUrl command
var publicNormalizePaymentReturnUrlCmd = &cobra.Command{
	Use:   "publicNormalizePaymentReturnUrl",
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
	cmd.RootCmd.AddCommand(publicNormalizePaymentReturnUrlCmd)
	publicNormalizePaymentReturnUrlCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicNormalizePaymentReturnUrlCmd.MarkFlagRequired("namespace")
	publicNormalizePaymentReturnUrlCmd.Flags().StringP("PayerID", "p", " ", "Payer ID")
	publicNormalizePaymentReturnUrlCmd.Flags().StringP("foreinginvoice", "f", " ", "Foreinginvoice")
	publicNormalizePaymentReturnUrlCmd.Flags().StringP("invoice_id", "i", " ", "Invoice id")
	publicNormalizePaymentReturnUrlCmd.Flags().StringP("payload", "p", " ", "Payload")
	publicNormalizePaymentReturnUrlCmd.Flags().StringP("resultCode", "r", " ", "Result code")
	publicNormalizePaymentReturnUrlCmd.Flags().StringP("status", "s", " ", "Status")
	publicNormalizePaymentReturnUrlCmd.Flags().StringP("token", "t", " ", "Token")
	publicNormalizePaymentReturnUrlCmd.Flags().StringP("type", "t", " ", "Type")
	publicNormalizePaymentReturnUrlCmd.Flags().StringP("user_id", "u", " ", "User id")
	publicNormalizePaymentReturnUrlCmd.Flags().StringP("orderNo", "o", " ", "Order no")
	_ = publicNormalizePaymentReturnUrlCmd.MarkFlagRequired("orderNo")
	publicNormalizePaymentReturnUrlCmd.Flags().StringP("paymentOrderNo", "p", " ", "Payment order no")
	_ = publicNormalizePaymentReturnUrlCmd.MarkFlagRequired("paymentOrderNo")
	publicNormalizePaymentReturnUrlCmd.Flags().StringP("paymentProvider", "p", " ", "Payment provider")
	_ = publicNormalizePaymentReturnUrlCmd.MarkFlagRequired("paymentProvider")
	publicNormalizePaymentReturnUrlCmd.Flags().StringP("returnUrl", "r", " ", "Return url")
	_ = publicNormalizePaymentReturnUrlCmd.MarkFlagRequired("returnUrl")
}
