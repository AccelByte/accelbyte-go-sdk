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

// PublicGetPaymentAccountsCmd represents the PublicGetPaymentAccounts command
var PublicGetPaymentAccountsCmd = &cobra.Command{
	Use:   "publicGetPaymentAccounts",
	Short: "Public get payment accounts",
	Long:  `Public get payment accounts`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentAccountService := &platform.PaymentAccountService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &payment_account.PublicGetPaymentAccountsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := paymentAccountService.PublicGetPaymentAccountsShort(input)
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
	PublicGetPaymentAccountsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetPaymentAccountsCmd.MarkFlagRequired("namespace")
	PublicGetPaymentAccountsCmd.Flags().String("userId", "", "User id")
	_ = PublicGetPaymentAccountsCmd.MarkFlagRequired("userId")
}
