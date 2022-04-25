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

// PublicGetWalletCmd represents the PublicGetWallet command
var PublicGetWalletCmd = &cobra.Command{
	Use:   "publicGetWallet",
	Short: "Public get wallet",
	Long:  `Public get wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &wallet.PublicGetWalletParams{
			CurrencyCode: currencyCode,
			Namespace:    namespace,
			UserID:       userId,
		}
		ok, err := walletService.PublicGetWalletShort(input, nil)
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
	PublicGetWalletCmd.Flags().StringP("currencyCode", "", "", "Currency code")
	_ = PublicGetWalletCmd.MarkFlagRequired("currencyCode")
	PublicGetWalletCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetWalletCmd.MarkFlagRequired("namespace")
	PublicGetWalletCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGetWalletCmd.MarkFlagRequired("userId")
}
