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

// QuerySteamReportHistoriesCmd represents the QuerySteamReportHistories command
var QuerySteamReportHistoriesCmd = &cobra.Command{
	Use:   "querySteamReportHistories",
	Short: "Query steam report histories",
	Long:  `Query steam report histories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		orderId, _ := cmd.Flags().GetString("orderId")
		processStatus, _ := cmd.Flags().GetString("processStatus")
		steamId, _ := cmd.Flags().GetString("steamId")
		input := &iap.QuerySteamReportHistoriesParams{
			Namespace:     namespace,
			Limit:         &limit,
			Offset:        &offset,
			OrderID:       &orderId,
			ProcessStatus: &processStatus,
			SteamID:       &steamId,
		}
		ok, errOK := iapService.QuerySteamReportHistoriesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QuerySteamReportHistoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = QuerySteamReportHistoriesCmd.MarkFlagRequired("namespace")
	QuerySteamReportHistoriesCmd.Flags().Int32("limit", 20, "Limit")
	QuerySteamReportHistoriesCmd.Flags().Int32("offset", 0, "Offset")
	QuerySteamReportHistoriesCmd.Flags().String("orderId", "", "Order id")
	QuerySteamReportHistoriesCmd.Flags().String("processStatus", "", "Process status")
	QuerySteamReportHistoriesCmd.Flags().String("steamId", "", "Steam id")
}
