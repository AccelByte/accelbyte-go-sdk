// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package wallet

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListUserCurrencyTransactionsCmd represents the ListUserCurrencyTransactions command
var ListUserCurrencyTransactionsCmd = &cobra.Command{
	Use:   "listUserCurrencyTransactions",
	Short: "List user currency transactions",
	Long:  `List user currency transactions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &wallet.ListUserCurrencyTransactionsParams{
			CurrencyCode: currencyCode,
			Namespace:    namespace,
			UserID:       userId,
			Limit:        &limit,
			Offset:       &offset,
		}
		ok, errOK := walletService.ListUserCurrencyTransactionsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListUserCurrencyTransactionsCmd.Flags().String("currencyCode", "", "Currency code")
	_ = ListUserCurrencyTransactionsCmd.MarkFlagRequired("currencyCode")
	ListUserCurrencyTransactionsCmd.Flags().String("namespace", "", "Namespace")
	_ = ListUserCurrencyTransactionsCmd.MarkFlagRequired("namespace")
	ListUserCurrencyTransactionsCmd.Flags().String("userId", "", "User id")
	_ = ListUserCurrencyTransactionsCmd.MarkFlagRequired("userId")
	ListUserCurrencyTransactionsCmd.Flags().Int32("limit", 20, "Limit")
	ListUserCurrencyTransactionsCmd.Flags().Int32("offset", 0, "Offset")
}
