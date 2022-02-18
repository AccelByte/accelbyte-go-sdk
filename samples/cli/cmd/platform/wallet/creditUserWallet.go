// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CreditRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &wallet.CreditUserWalletParams{
			Body:         body,
			CurrencyCode: currencyCode,
			Namespace:    namespace,
			UserID:       userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := walletService.CreditUserWallet(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	CreditUserWalletCmd.Flags().StringP("body", "", "", "Body")
	CreditUserWalletCmd.Flags().StringP("currencyCode", "", "", "Currency code")
	_ = CreditUserWalletCmd.MarkFlagRequired("currencyCode")
	CreditUserWalletCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreditUserWalletCmd.MarkFlagRequired("namespace")
	CreditUserWalletCmd.Flags().StringP("userId", "", "", "User id")
	_ = CreditUserWalletCmd.MarkFlagRequired("userId")
}
