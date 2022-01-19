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

// getUserWalletCmd represents the getUserWallet command
var getUserWalletCmd = &cobra.Command{
	Use:   "getUserWallet",
	Short: "Get user wallet",
	Long:  `Get user wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		walletId, _ := cmd.Flags().GetString("walletId")
		input := &wallet.GetUserWalletParams{
			Namespace: namespace,
			UserID:    userId,
			WalletID:  walletId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := walletService.GetUserWallet(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserWalletCmd)
	getUserWalletCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserWalletCmd.MarkFlagRequired("namespace")
	getUserWalletCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getUserWalletCmd.MarkFlagRequired("userId")
	getUserWalletCmd.Flags().StringP("walletId", "w", " ", "Wallet id")
	_ = getUserWalletCmd.MarkFlagRequired("walletId")
}
