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

// DebitUserWalletCmd represents the DebitUserWallet command
var DebitUserWalletCmd = &cobra.Command{
	Use:   "DebitUserWallet",
	Short: "Debit user wallet",
	Long:  `Debit user wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		walletId, _ := cmd.Flags().GetString("walletId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.DebitRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &wallet.DebitUserWalletParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
			WalletID:  walletId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := walletService.DebitUserWallet(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	DebitUserWalletCmd.Flags().StringP("body", "by", " ", "Body")
	DebitUserWalletCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = DebitUserWalletCmd.MarkFlagRequired("namespace")
	DebitUserWalletCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = DebitUserWalletCmd.MarkFlagRequired("userId")
	DebitUserWalletCmd.Flags().StringP("walletId", "wd", " ", "Wallet id")
	_ = DebitUserWalletCmd.MarkFlagRequired("walletId")
}
