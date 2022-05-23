// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package catalogChanges

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/catalog_changes"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryChangesCmd represents the QueryChanges command
var QueryChangesCmd = &cobra.Command{
	Use:   "queryChanges",
	Short: "Query changes",
	Long:  `Query changes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		catalogChangesService := &platform.CatalogChangesService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		action, _ := cmd.Flags().GetString("action")
		itemType, _ := cmd.Flags().GetString("itemType")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		status, _ := cmd.Flags().GetString("status")
		type_, _ := cmd.Flags().GetString("type")
		updatedAtEnd, _ := cmd.Flags().GetString("updatedAtEnd")
		updatedAtStart, _ := cmd.Flags().GetString("updatedAtStart")
		input := &catalog_changes.QueryChangesParams{
			Namespace:      namespace,
			StoreID:        storeId,
			Action:         &action,
			ItemType:       &itemType,
			Limit:          &limit,
			Offset:         &offset,
			SortBy:         &sortBy,
			Status:         &status,
			Type:           &type_,
			UpdatedAtEnd:   &updatedAtEnd,
			UpdatedAtStart: &updatedAtStart,
		}
		ok, err := catalogChangesService.QueryChangesShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	QueryChangesCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryChangesCmd.MarkFlagRequired("namespace")
	QueryChangesCmd.Flags().String("storeId", "", "Store id")
	_ = QueryChangesCmd.MarkFlagRequired("storeId")
	QueryChangesCmd.Flags().String("action", "-1", "Action")
	QueryChangesCmd.Flags().String("itemType", "", "Item type")
	QueryChangesCmd.Flags().Int32("limit", 20, "Limit")
	QueryChangesCmd.Flags().Int32("offset", 0, "Offset")
	QueryChangesCmd.Flags().String("sortBy", "", "Sort by")
	QueryChangesCmd.Flags().String("status", "", "Status")
	QueryChangesCmd.Flags().String("type", "", "Type")
	QueryChangesCmd.Flags().String("updatedAtEnd", "", "Updated at end")
	QueryChangesCmd.Flags().String("updatedAtStart", "", "Updated at start")
}
