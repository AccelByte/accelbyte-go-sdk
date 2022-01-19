// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicListUserWalletTransactionsCmd represents the publicListUserWalletTransactions command
var publicListUserWalletTransactionsCmd = &cobra.Command{
	Use:   "publicListUserWalletTransactions",
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
	cmd.RootCmd.AddCommand(publicListUserWalletTransactionsCmd)
	publicListUserWalletTransactionsCmd.Flags().StringP("currencyCode", "c", " ", "Currency code")
	_ = publicListUserWalletTransactionsCmd.MarkFlagRequired("currencyCode")
	publicListUserWalletTransactionsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicListUserWalletTransactionsCmd.MarkFlagRequired("namespace")
	publicListUserWalletTransactionsCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicListUserWalletTransactionsCmd.MarkFlagRequired("userId")
	publicListUserWalletTransactionsCmd.Flags().Int32P("limit", "l", 20, "Limit")
	publicListUserWalletTransactionsCmd.Flags().Int32P("offset", "o", 0, "Offset")
}
