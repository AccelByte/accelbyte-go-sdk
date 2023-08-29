// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clawback

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/clawback"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryIAPClawbackHistoryCmd represents the QueryIAPClawbackHistory command
var QueryIAPClawbackHistoryCmd = &cobra.Command{
	Use:   "queryIAPClawbackHistory",
	Short: "Query IAP clawback history",
	Long:  `Query IAP clawback history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clawbackService := &platform.ClawbackService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endTime, _ := cmd.Flags().GetString("endTime")
		eventType, _ := cmd.Flags().GetString("eventType")
		externalOrderId, _ := cmd.Flags().GetString("externalOrderId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		startTime, _ := cmd.Flags().GetString("startTime")
		status, _ := cmd.Flags().GetString("status")
		userId, _ := cmd.Flags().GetString("userId")
		input := &clawback.QueryIAPClawbackHistoryParams{
			Namespace:       namespace,
			EndTime:         &endTime,
			EventType:       &eventType,
			ExternalOrderID: &externalOrderId,
			Limit:           &limit,
			Offset:          &offset,
			StartTime:       &startTime,
			Status:          &status,
			UserID:          &userId,
		}
		ok, errOK := clawbackService.QueryIAPClawbackHistoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryIAPClawbackHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryIAPClawbackHistoryCmd.MarkFlagRequired("namespace")
	QueryIAPClawbackHistoryCmd.Flags().String("endTime", "", "End time")
	QueryIAPClawbackHistoryCmd.Flags().String("eventType", "0", "Event type")
	QueryIAPClawbackHistoryCmd.Flags().String("externalOrderId", "", "External order id")
	QueryIAPClawbackHistoryCmd.Flags().Int32("limit", 20, "Limit")
	QueryIAPClawbackHistoryCmd.Flags().Int32("offset", 0, "Offset")
	QueryIAPClawbackHistoryCmd.Flags().String("startTime", "", "Start time")
	QueryIAPClawbackHistoryCmd.Flags().String("status", "", "Status")
	QueryIAPClawbackHistoryCmd.Flags().String("userId", "", "User id")
}
