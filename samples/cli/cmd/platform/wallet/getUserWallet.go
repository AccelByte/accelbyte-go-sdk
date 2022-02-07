// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package wallet

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserWalletCmd represents the GetUserWallet command
var GetUserWalletCmd = &cobra.Command{
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
	GetUserWalletCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserWalletCmd.MarkFlagRequired("namespace")
	GetUserWalletCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserWalletCmd.MarkFlagRequired("userId")
	GetUserWalletCmd.Flags().StringP("walletId", "", "", "Wallet id")
	_ = GetUserWalletCmd.MarkFlagRequired("walletId")
}
