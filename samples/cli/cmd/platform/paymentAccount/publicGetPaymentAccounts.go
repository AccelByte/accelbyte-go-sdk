// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_account"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetPaymentAccountsCmd represents the publicGetPaymentAccounts command
var publicGetPaymentAccountsCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentAccountService.PublicGetPaymentAccounts(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetPaymentAccountsCmd)
	publicGetPaymentAccountsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetPaymentAccountsCmd.MarkFlagRequired("namespace")
	publicGetPaymentAccountsCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicGetPaymentAccountsCmd.MarkFlagRequired("userId")
}
