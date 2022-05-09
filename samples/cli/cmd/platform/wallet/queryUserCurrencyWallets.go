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

// QueryUserCurrencyWalletsCmd represents the QueryUserCurrencyWallets command
var QueryUserCurrencyWalletsCmd = &cobra.Command{
	Use:   "queryUserCurrencyWallets",
	Short: "Query user currency wallets",
	Long:  `Query user currency wallets`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &wallet.QueryUserCurrencyWalletsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := walletService.QueryUserCurrencyWalletsShort(input)
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
	QueryUserCurrencyWalletsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = QueryUserCurrencyWalletsCmd.MarkFlagRequired("namespace")
	QueryUserCurrencyWalletsCmd.Flags().StringP("userId", "", "", "User id")
	_ = QueryUserCurrencyWalletsCmd.MarkFlagRequired("userId")
}
