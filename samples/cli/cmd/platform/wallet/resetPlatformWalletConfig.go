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

// ResetPlatformWalletConfigCmd represents the ResetPlatformWalletConfig command
var ResetPlatformWalletConfigCmd = &cobra.Command{
	Use:   "resetPlatformWalletConfig",
	Short: "Reset platform wallet config",
	Long:  `Reset platform wallet config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platform, _ := cmd.Flags().GetString("platform")
		input := &wallet.ResetPlatformWalletConfigParams{
			Namespace: namespace,
			Platform:  platform,
		}
		ok, errOK := walletService.ResetPlatformWalletConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ResetPlatformWalletConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = ResetPlatformWalletConfigCmd.MarkFlagRequired("namespace")
	ResetPlatformWalletConfigCmd.Flags().String("platform", "", "Platform")
	_ = ResetPlatformWalletConfigCmd.MarkFlagRequired("platform")
}
