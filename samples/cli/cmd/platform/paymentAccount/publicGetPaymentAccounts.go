// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package paymentAccount

import (
	"encoding/json"
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentAccountService.PublicGetPaymentAccounts(input)
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
	PublicGetPaymentAccountsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetPaymentAccountsCmd.MarkFlagRequired("namespace")
	PublicGetPaymentAccountsCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGetPaymentAccountsCmd.MarkFlagRequired("userId")
}
