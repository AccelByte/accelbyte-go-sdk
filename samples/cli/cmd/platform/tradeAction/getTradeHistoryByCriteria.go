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

// GetTradeHistoryByCriteriaCmd represents the GetTradeHistoryByCriteria command
var GetTradeHistoryByCriteriaCmd = &cobra.Command{
	Use:   "getTradeHistoryByCriteria",
	Short: "Get trade history by criteria",
	Long:  `Get trade history by criteria`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tradeActionService := &platform.TradeActionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		status, _ := cmd.Flags().GetString("status")
		type_, _ := cmd.Flags().GetString("type")
		userId, _ := cmd.Flags().GetString("userId")
		input := &trade_action.GetTradeHistoryByCriteriaParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Status:    &status,
			Type:      &type_,
			UserID:    &userId,
		}
		ok, errOK := tradeActionService.GetTradeHistoryByCriteriaShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetTradeHistoryByCriteriaCmd.Flags().String("namespace", "", "Namespace")
	_ = GetTradeHistoryByCriteriaCmd.MarkFlagRequired("namespace")
	GetTradeHistoryByCriteriaCmd.Flags().Int32("limit", 20, "Limit")
	GetTradeHistoryByCriteriaCmd.Flags().Int32("offset", 0, "Offset")
	GetTradeHistoryByCriteriaCmd.Flags().String("status", "", "Status")
	GetTradeHistoryByCriteriaCmd.Flags().String("type", "", "Type")
	GetTradeHistoryByCriteriaCmd.Flags().String("userId", "", "User id")
}
