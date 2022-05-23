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

// ListUserWalletTransactionsCmd represents the ListUserWalletTransactions command
var ListUserWalletTransactionsCmd = &cobra.Command{
	Use:   "listUserWalletTransactions",
	Short: "List user wallet transactions",
	Long:  `List user wallet transactions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		walletId, _ := cmd.Flags().GetString("walletId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &wallet.ListUserWalletTransactionsParams{
			Namespace: namespace,
			UserID:    userId,
			WalletID:  walletId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := walletService.ListUserWalletTransactionsShort(input)
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
	ListUserWalletTransactionsCmd.Flags().String("namespace", "", "Namespace")
	_ = ListUserWalletTransactionsCmd.MarkFlagRequired("namespace")
	ListUserWalletTransactionsCmd.Flags().String("userId", "", "User id")
	_ = ListUserWalletTransactionsCmd.MarkFlagRequired("userId")
	ListUserWalletTransactionsCmd.Flags().String("walletId", "", "Wallet id")
	_ = ListUserWalletTransactionsCmd.MarkFlagRequired("walletId")
	ListUserWalletTransactionsCmd.Flags().Int32("limit", 20, "Limit")
	ListUserWalletTransactionsCmd.Flags().Int32("offset", 0, "Offset")
}
