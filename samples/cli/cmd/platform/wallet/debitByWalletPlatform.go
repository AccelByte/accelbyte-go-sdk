// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package wallet

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DebitByWalletPlatformCmd represents the DebitByWalletPlatform command
var DebitByWalletPlatformCmd = &cobra.Command{
	Use:   "debitByWalletPlatform",
	Short: "Debit by wallet platform",
	Long:  `Debit by wallet platform`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.DebitByWalletPlatformRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &wallet.DebitByWalletPlatformParams{
			Body:         body,
			CurrencyCode: currencyCode,
			Namespace:    namespace,
			UserID:       userId,
		}
		ok, errOK := walletService.DebitByWalletPlatformShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DebitByWalletPlatformCmd.Flags().String("body", "", "Body")
	DebitByWalletPlatformCmd.Flags().String("currencyCode", "", "Currency code")
	_ = DebitByWalletPlatformCmd.MarkFlagRequired("currencyCode")
	DebitByWalletPlatformCmd.Flags().String("namespace", "", "Namespace")
	_ = DebitByWalletPlatformCmd.MarkFlagRequired("namespace")
	DebitByWalletPlatformCmd.Flags().String("userId", "", "User id")
	_ = DebitByWalletPlatformCmd.MarkFlagRequired("userId")
}
