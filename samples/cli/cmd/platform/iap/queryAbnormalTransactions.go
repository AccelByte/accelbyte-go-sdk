// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryAbnormalTransactionsCmd represents the QueryAbnormalTransactions command
var QueryAbnormalTransactionsCmd = &cobra.Command{
	Use:   "queryAbnormalTransactions",
	Short: "Query abnormal transactions",
	Long:  `Query abnormal transactions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		orderId, _ := cmd.Flags().GetString("orderId")
		steamId, _ := cmd.Flags().GetString("steamId")
		input := &iap.QueryAbnormalTransactionsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			OrderID:   &orderId,
			SteamID:   &steamId,
		}
		ok, errOK := iapService.QueryAbnormalTransactionsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryAbnormalTransactionsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryAbnormalTransactionsCmd.MarkFlagRequired("namespace")
	QueryAbnormalTransactionsCmd.Flags().Int32("limit", 20, "Limit")
	QueryAbnormalTransactionsCmd.Flags().Int32("offset", 0, "Offset")
	QueryAbnormalTransactionsCmd.Flags().String("orderId", "", "Order id")
	QueryAbnormalTransactionsCmd.Flags().String("steamId", "", "Steam id")
}
