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

// CreditUserWalletCmd represents the CreditUserWallet command
var CreditUserWalletCmd = &cobra.Command{
	Use:   "creditUserWallet",
	Short: "Credit user wallet",
	Long:  `Credit user wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CreditRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &wallet.CreditUserWalletParams{
			Body:         body,
			CurrencyCode: currencyCode,
			Namespace:    namespace,
			UserID:       userId,
		}
		ok, errOK := walletService.CreditUserWalletShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CreditUserWalletCmd.Flags().String("body", "", "Body")
	_ = CreditUserWalletCmd.MarkFlagRequired("body")
	CreditUserWalletCmd.Flags().String("currencyCode", "", "Currency code")
	_ = CreditUserWalletCmd.MarkFlagRequired("currencyCode")
	CreditUserWalletCmd.Flags().String("namespace", "", "Namespace")
	_ = CreditUserWalletCmd.MarkFlagRequired("namespace")
	CreditUserWalletCmd.Flags().String("userId", "", "User id")
	_ = CreditUserWalletCmd.MarkFlagRequired("userId")
}
