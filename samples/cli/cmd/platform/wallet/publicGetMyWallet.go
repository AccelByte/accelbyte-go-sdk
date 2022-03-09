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

// PublicGetMyWalletCmd represents the PublicGetMyWallet command
var PublicGetMyWalletCmd = &cobra.Command{
	Use:   "publicGetMyWallet",
	Short: "Public get my wallet",
	Long:  `Public get my wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &wallet.PublicGetMyWalletParams{
			CurrencyCode: currencyCode,
			Namespace:    namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := walletService.PublicGetMyWallet(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	PublicGetMyWalletCmd.Flags().StringP("currencyCode", "", "", "Currency code")
	_ = PublicGetMyWalletCmd.MarkFlagRequired("currencyCode")
	PublicGetMyWalletCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetMyWalletCmd.MarkFlagRequired("namespace")
}
