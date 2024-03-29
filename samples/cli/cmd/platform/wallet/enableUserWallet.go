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

// EnableUserWalletCmd represents the EnableUserWallet command
var EnableUserWalletCmd = &cobra.Command{
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
		errNoContent := walletService.EnableUserWalletShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	EnableUserWalletCmd.Flags().String("namespace", "", "Namespace")
	_ = EnableUserWalletCmd.MarkFlagRequired("namespace")
	EnableUserWalletCmd.Flags().String("userId", "", "User id")
	_ = EnableUserWalletCmd.MarkFlagRequired("userId")
	EnableUserWalletCmd.Flags().String("walletId", "", "Wallet id")
	_ = EnableUserWalletCmd.MarkFlagRequired("walletId")
}
