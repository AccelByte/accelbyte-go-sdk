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
		errInput := walletService.EnableUserWalletShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	EnableUserWalletCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = EnableUserWalletCmd.MarkFlagRequired("namespace")
	EnableUserWalletCmd.Flags().StringP("userId", "", "", "User id")
	_ = EnableUserWalletCmd.MarkFlagRequired("userId")
	EnableUserWalletCmd.Flags().StringP("walletId", "", "", "Wallet id")
	_ = EnableUserWalletCmd.MarkFlagRequired("walletId")
}
