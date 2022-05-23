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

// CheckWalletCmd represents the CheckWallet command
var CheckWalletCmd = &cobra.Command{
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
		origin, _ := cmd.Flags().GetString("origin")
		input := &wallet.CheckWalletParams{
			CurrencyCode: currencyCode,
			Namespace:    namespace,
			UserID:       userId,
			Origin:       origin,
		}
		errInput := walletService.CheckWalletShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	CheckWalletCmd.Flags().String("currencyCode", "", "Currency code")
	_ = CheckWalletCmd.MarkFlagRequired("currencyCode")
	CheckWalletCmd.Flags().String("namespace", "", "Namespace")
	_ = CheckWalletCmd.MarkFlagRequired("namespace")
	CheckWalletCmd.Flags().String("userId", "", "User id")
	_ = CheckWalletCmd.MarkFlagRequired("userId")
	CheckWalletCmd.Flags().String("origin", "", "Origin")
	_ = CheckWalletCmd.MarkFlagRequired("origin")
}
