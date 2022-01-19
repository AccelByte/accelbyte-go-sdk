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

// checkWalletCmd represents the checkWallet command
var checkWalletCmd = &cobra.Command{
	Use:   "checkWallet",
	Short: "Check wallet",
	Long:  `Check wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &wallet.CheckWalletParams{
			CurrencyCode: currencyCode,
			Namespace:    namespace,
			UserID:       userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := walletService.CheckWallet(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(checkWalletCmd)
	checkWalletCmd.Flags().StringP("currencyCode", "c", " ", "Currency code")
	_ = checkWalletCmd.MarkFlagRequired("currencyCode")
	checkWalletCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = checkWalletCmd.MarkFlagRequired("namespace")
	checkWalletCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = checkWalletCmd.MarkFlagRequired("userId")
}
