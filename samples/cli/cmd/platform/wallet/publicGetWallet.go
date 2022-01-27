// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package wallet

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetWalletCmd represents the publicGetWallet command
var publicGetWalletCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := walletService.PublicGetWallet(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetWalletCmd)
	publicGetWalletCmd.Flags().StringP("currencyCode", "ce", " ", "Currency code")
	_ = publicGetWalletCmd.MarkFlagRequired("currencyCode")
	publicGetWalletCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetWalletCmd.MarkFlagRequired("namespace")
	publicGetWalletCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicGetWalletCmd.MarkFlagRequired("userId")
}
