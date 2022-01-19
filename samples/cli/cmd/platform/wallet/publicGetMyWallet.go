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

// publicGetMyWalletCmd represents the publicGetMyWallet command
var publicGetMyWalletCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetMyWalletCmd)
	publicGetMyWalletCmd.Flags().StringP("currencyCode", "c", " ", "Currency code")
	_ = publicGetMyWalletCmd.MarkFlagRequired("currencyCode")
	publicGetMyWalletCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetMyWalletCmd.MarkFlagRequired("namespace")
}
