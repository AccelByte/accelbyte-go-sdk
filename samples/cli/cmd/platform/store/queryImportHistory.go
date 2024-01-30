// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryImportHistoryCmd represents the QueryImportHistory command
var QueryImportHistoryCmd = &cobra.Command{
	Use:   "queryImportHistory",
	Short: "Query import history",
	Long:  `Query import history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		end, _ := cmd.Flags().GetString("end")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		start, _ := cmd.Flags().GetString("start")
		success, _ := cmd.Flags().GetBool("success")
		input := &store.QueryImportHistoryParams{
			Namespace: namespace,
			StoreID:   storeId,
			End:       &end,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
			Start:     &start,
			Success:   &success,
		}
		ok, errOK := storeService.QueryImportHistoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryImportHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryImportHistoryCmd.MarkFlagRequired("namespace")
	QueryImportHistoryCmd.Flags().String("storeId", "", "Store id")
	_ = QueryImportHistoryCmd.MarkFlagRequired("storeId")
	QueryImportHistoryCmd.Flags().String("end", "", "End")
	QueryImportHistoryCmd.Flags().Int32("limit", 20, "Limit")
	QueryImportHistoryCmd.Flags().Int32("offset", 0, "Offset")
	QueryImportHistoryCmd.Flags().String("sortBy", "", "Sort by")
	QueryImportHistoryCmd.Flags().String("start", "", "Start")
	QueryImportHistoryCmd.Flags().Bool("success", false, "Success")
}
