// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package wallet

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicListUserWalletTransactionsCmd represents the PublicListUserWalletTransactions command
var PublicListUserWalletTransactionsCmd = &cobra.Command{
	Use:   "PublicListUserWalletTransactions",
	Short: "Public list user wallet transactions",
	Long:  `Public list user wallet transactions`,
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
		input := &wallet.PublicListUserWalletTransactionsParams{
			CurrencyCode: currencyCode,
			Namespace:    namespace,
			UserID:       userId,
			Limit:        &limit,
			Offset:       &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := walletService.PublicListUserWalletTransactions(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicListUserWalletTransactionsCmd.Flags().StringP("currencyCode", "ce", " ", "Currency code")
	_ = PublicListUserWalletTransactionsCmd.MarkFlagRequired("currencyCode")
	PublicListUserWalletTransactionsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PublicListUserWalletTransactionsCmd.MarkFlagRequired("namespace")
	PublicListUserWalletTransactionsCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = PublicListUserWalletTransactionsCmd.MarkFlagRequired("userId")
	PublicListUserWalletTransactionsCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	PublicListUserWalletTransactionsCmd.Flags().Int32P("offset", "ot", 0, "Offset")
}
