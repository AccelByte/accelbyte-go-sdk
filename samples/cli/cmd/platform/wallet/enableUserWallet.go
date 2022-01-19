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

// enableUserWalletCmd represents the enableUserWallet command
var enableUserWalletCmd = &cobra.Command{
	Use:   "enableUserWallet",
	Short: "Enable user wallet",
	Long:  `Enable user wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		walletId, _ := cmd.Flags().GetString("walletId")
		input := &wallet.EnableUserWalletParams{
			Namespace: namespace,
			UserID:    userId,
			WalletID:  walletId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := walletService.EnableUserWallet(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(enableUserWalletCmd)
	enableUserWalletCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = enableUserWalletCmd.MarkFlagRequired("namespace")
	enableUserWalletCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = enableUserWalletCmd.MarkFlagRequired("userId")
	enableUserWalletCmd.Flags().StringP("walletId", "w", " ", "Wallet id")
	_ = enableUserWalletCmd.MarkFlagRequired("walletId")
}
