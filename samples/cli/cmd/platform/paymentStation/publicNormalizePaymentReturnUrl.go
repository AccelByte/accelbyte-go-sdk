// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
		redirectResult, _ := cmd.Flags().GetString("redirectResult")
		resultCode, _ := cmd.Flags().GetString("resultCode")
		sessionId, _ := cmd.Flags().GetString("sessionId")
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
			RedirectResult:  &redirectResult,
			ResultCode:      &resultCode,
			SessionID:       &sessionId,
			Status:          &status,
			Token:           &token,
			Type:            &type_,
			UserID:          &userId,
			OrderNo:         orderNo,
			PaymentOrderNo:  paymentOrderNo,
			PaymentProvider: paymentProvider,
			ReturnURL:       returnUrl,
		}
		errInput := paymentStationService.PublicNormalizePaymentReturnURLShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicNormalizePaymentReturnUrlCmd.MarkFlagRequired("namespace")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("payerID", "", "", "Payer ID")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("foreinginvoice", "", "", "Foreinginvoice")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("invoiceId", "", "", "Invoice id")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("payload", "", "", "Payload")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("redirectResult", "", "", "Redirect result")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("resultCode", "", "", "Result code")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("sessionId", "", "", "Session id")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("status", "", "", "Status")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("token", "", "", "Token")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("type", "", "", "Type")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("userId", "", "", "User id")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("orderNo", "", "", "Order no")
	_ = PublicNormalizePaymentReturnUrlCmd.MarkFlagRequired("orderNo")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("paymentOrderNo", "", "", "Payment order no")
	_ = PublicNormalizePaymentReturnUrlCmd.MarkFlagRequired("paymentOrderNo")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("paymentProvider", "", "", "Payment provider")
	_ = PublicNormalizePaymentReturnUrlCmd.MarkFlagRequired("paymentProvider")
	PublicNormalizePaymentReturnUrlCmd.Flags().StringP("returnUrl", "", "", "Return url")
	_ = PublicNormalizePaymentReturnUrlCmd.MarkFlagRequired("returnUrl")
}
