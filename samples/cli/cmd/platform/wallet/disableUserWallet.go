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

// DisableUserWalletCmd represents the DisableUserWallet command
var DisableUserWalletCmd = &cobra.Command{
	Use:   "disableUserWallet",
	Short: "Disable user wallet",
	Long:  `Disable user wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		walletId, _ := cmd.Flags().GetString("walletId")
		input := &wallet.DisableUserWalletParams{
			Namespace: namespace,
			UserID:    userId,
			WalletID:  walletId,
		}
		errNoContent := walletService.DisableUserWalletShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DisableUserWalletCmd.Flags().String("namespace", "", "Namespace")
	_ = DisableUserWalletCmd.MarkFlagRequired("namespace")
	DisableUserWalletCmd.Flags().String("userId", "", "User id")
	_ = DisableUserWalletCmd.MarkFlagRequired("userId")
	DisableUserWalletCmd.Flags().String("walletId", "", "Wallet id")
	_ = DisableUserWalletCmd.MarkFlagRequired("walletId")
}
