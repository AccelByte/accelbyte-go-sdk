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
		errNoContent := paymentStationService.PublicNormalizePaymentReturnURLShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicNormalizePaymentReturnUrlCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicNormalizePaymentReturnUrlCmd.MarkFlagRequired("namespace")
	PublicNormalizePaymentReturnUrlCmd.Flags().String("payerID", "", "Payer ID")
	PublicNormalizePaymentReturnUrlCmd.Flags().String("foreinginvoice", "", "Foreinginvoice")
	PublicNormalizePaymentReturnUrlCmd.Flags().String("invoiceId", "", "Invoice id")
	PublicNormalizePaymentReturnUrlCmd.Flags().String("payload", "", "Payload")
	PublicNormalizePaymentReturnUrlCmd.Flags().String("redirectResult", "", "Redirect result")
	PublicNormalizePaymentReturnUrlCmd.Flags().String("resultCode", "", "Result code")
	PublicNormalizePaymentReturnUrlCmd.Flags().String("sessionId", "", "Session id")
	PublicNormalizePaymentReturnUrlCmd.Flags().String("status", "", "Status")
	PublicNormalizePaymentReturnUrlCmd.Flags().String("token", "", "Token")
	PublicNormalizePaymentReturnUrlCmd.Flags().String("type", "", "Type")
	PublicNormalizePaymentReturnUrlCmd.Flags().String("userId", "", "User id")
	PublicNormalizePaymentReturnUrlCmd.Flags().String("orderNo", "", "Order no")
	_ = PublicNormalizePaymentReturnUrlCmd.MarkFlagRequired("orderNo")
	PublicNormalizePaymentReturnUrlCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	_ = PublicNormalizePaymentReturnUrlCmd.MarkFlagRequired("paymentOrderNo")
	PublicNormalizePaymentReturnUrlCmd.Flags().String("paymentProvider", "", "Payment provider")
	_ = PublicNormalizePaymentReturnUrlCmd.MarkFlagRequired("paymentProvider")
	PublicNormalizePaymentReturnUrlCmd.Flags().String("returnUrl", "", "Return url")
	_ = PublicNormalizePaymentReturnUrlCmd.MarkFlagRequired("returnUrl")
}
