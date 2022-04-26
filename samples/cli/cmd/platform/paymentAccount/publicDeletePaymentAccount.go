// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentAccount

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_account"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicDeletePaymentAccountCmd represents the PublicDeletePaymentAccount command
var PublicDeletePaymentAccountCmd = &cobra.Command{
	Use:   "publicDeletePaymentAccount",
	Short: "Public delete payment account",
	Long:  `Public delete payment account`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentAccountService := &platform.PaymentAccountService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		namespace, _ := cmd.Flags().GetString("namespace")
		type_, _ := cmd.Flags().GetString("type")
		userId, _ := cmd.Flags().GetString("userId")
		input := &payment_account.PublicDeletePaymentAccountParams{
			ID:        id_,
			Namespace: namespace,
			Type:      type_,
			UserID:    userId,
		}
		errInput := paymentAccountService.PublicDeletePaymentAccountShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicDeletePaymentAccountCmd.Flags().StringP("id", "", "", "Id")
	_ = PublicDeletePaymentAccountCmd.MarkFlagRequired("id")
	PublicDeletePaymentAccountCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicDeletePaymentAccountCmd.MarkFlagRequired("namespace")
	PublicDeletePaymentAccountCmd.Flags().StringP("type", "", "", "Type")
	_ = PublicDeletePaymentAccountCmd.MarkFlagRequired("type")
	PublicDeletePaymentAccountCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicDeletePaymentAccountCmd.MarkFlagRequired("userId")
}
