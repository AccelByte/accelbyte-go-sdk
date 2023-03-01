// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package revocation

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/revocation"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryRevocationHistoriesCmd represents the QueryRevocationHistories command
var QueryRevocationHistoriesCmd = &cobra.Command{
	Use:   "queryRevocationHistories",
	Short: "Query revocation histories",
	Long:  `Query revocation histories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		revocationService := &platform.RevocationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endTime, _ := cmd.Flags().GetString("endTime")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		source, _ := cmd.Flags().GetString("source")
		startTime, _ := cmd.Flags().GetString("startTime")
		status, _ := cmd.Flags().GetString("status")
		transactionId, _ := cmd.Flags().GetString("transactionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &revocation.QueryRevocationHistoriesParams{
			Namespace:     namespace,
			EndTime:       &endTime,
			Limit:         &limit,
			Offset:        &offset,
			Source:        &source,
			StartTime:     &startTime,
			Status:        &status,
			TransactionID: &transactionId,
			UserID:        &userId,
		}
		ok, errOK := revocationService.QueryRevocationHistoriesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryRevocationHistoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryRevocationHistoriesCmd.MarkFlagRequired("namespace")
	QueryRevocationHistoriesCmd.Flags().String("endTime", "", "End time")
	QueryRevocationHistoriesCmd.Flags().Int32("limit", 20, "Limit")
	QueryRevocationHistoriesCmd.Flags().Int32("offset", 0, "Offset")
	QueryRevocationHistoriesCmd.Flags().String("source", "", "Source")
	QueryRevocationHistoriesCmd.Flags().String("startTime", "", "Start time")
	QueryRevocationHistoriesCmd.Flags().String("status", "", "Status")
	QueryRevocationHistoriesCmd.Flags().String("transactionId", "", "Transaction id")
	QueryRevocationHistoriesCmd.Flags().String("userId", "", "User id")
}
