// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package wallet

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// queryWalletsCmd represents the queryWallets command
var queryWalletsCmd = &cobra.Command{
	Use:   "queryWallets",
	Short: "Query wallets",
	Long:  `Query wallets`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		userId, _ := cmd.Flags().GetString("userId")
		input := &wallet.QueryWalletsParams{
			Namespace:    namespace,
			CurrencyCode: &currencyCode,
			Limit:        &limit,
			Offset:       &offset,
			UserID:       &userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := walletService.QueryWallets(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryWalletsCmd)
	queryWalletsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = queryWalletsCmd.MarkFlagRequired("namespace")
	queryWalletsCmd.Flags().StringP("currencyCode", "ce", " ", "Currency code")
	queryWalletsCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	queryWalletsCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	queryWalletsCmd.Flags().StringP("userId", "ud", " ", "User id")
}
