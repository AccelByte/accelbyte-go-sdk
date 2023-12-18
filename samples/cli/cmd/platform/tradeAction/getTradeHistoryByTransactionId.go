// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package tradeAction

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/trade_action"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetTradeHistoryByTransactionIdCmd represents the GetTradeHistoryByTransactionId command
var GetTradeHistoryByTransactionIdCmd = &cobra.Command{
	Use:   "getTradeHistoryByTransactionId",
	Short: "Get trade history by transaction id",
	Long:  `Get trade history by transaction id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tradeActionService := &platform.TradeActionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		transactionId, _ := cmd.Flags().GetString("transactionId")
		input := &trade_action.GetTradeHistoryByTransactionIDParams{
			Namespace:     namespace,
			TransactionID: transactionId,
		}
		ok, errOK := tradeActionService.GetTradeHistoryByTransactionIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetTradeHistoryByTransactionIdCmd.Flags().String("namespace", "", "Namespace")
	_ = GetTradeHistoryByTransactionIdCmd.MarkFlagRequired("namespace")
	GetTradeHistoryByTransactionIdCmd.Flags().String("transactionId", "", "Transaction id")
	_ = GetTradeHistoryByTransactionIdCmd.MarkFlagRequired("transactionId")
}
