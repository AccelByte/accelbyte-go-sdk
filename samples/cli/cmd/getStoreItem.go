// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getStoreItemCmd represents the getStoreItem command
var getStoreitemCmd = &cobra.Command{
	Use:   "getStoreItem",
	Short: "Get list of item from store",
	Long:  `Get list of item from store`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		appType := cmd.Flag("appType").Value.String()
		baseAppId := cmd.Flag("baseAppId").Value.String()
		categoryPath := cmd.Flag("categoryPath").Value.String()
		itemType := cmd.Flag("itemType").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		targetNamespace := cmd.Flag("targetNamespace").Value.String()
		features := cmd.Flag("features").Value.String()
		availableDate := cmd.Flag("availableDate").Value.String()
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		region := cmd.Flag("region").Value.String()
		sortBy := cmd.Flag("sortBy").Value.String()
		storeId := cmd.Flag("storeId").Value.String()
		tags := cmd.Flag("tags").Value.String()
		offset, err := cmd.Flags().GetInt32("offset")
		if err != nil {
			return err
		}
		limit, err := cmd.Flags().GetInt32("limit")
		if err != nil {
			return err
		}
		input := &item.QueryItemsParams{
			ActiveOnly:      &activeOnly,
			AppType:         &appType,
			AvailableDate:   &availableDate,
			BaseAppID:       &baseAppId,
			CategoryPath:    &categoryPath,
			Features:        &features,
			ItemType:        &itemType,
			Limit:           &limit,
			Namespace:       namespace,
			Offset:          &offset,
			Region:          &region,
			SortBy:          &sortBy,
			StoreID:         &storeId,
			Tags:            &tags,
			TargetNamespace: &targetNamespace,
		}
		items, err := itemService.GetItemByCriteria(input)
		if err != nil {
			return err
		}
		response, err := json.Marshal(items)
		if err != nil {
			return err
		}
		logrus.Infof("Response: %s", response)
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getStoreitemCmd)
	getStoreitemCmd.Flags().StringP("appType", "", "", "Sub type of APP item")
	getStoreitemCmd.Flags().StringP("baseAppId", "", "", "Base APP ID")
	getStoreitemCmd.Flags().StringP("categoryPath", "", "", "Category Path")
	getStoreitemCmd.Flags().StringP("itemType", "", "", "Item type")
	getStoreitemCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = getStoreitemCmd.MarkFlagRequired("namespace")
	getStoreitemCmd.Flags().StringP("targetNamespace", "", "", "Target namespace")
	getStoreitemCmd.Flags().StringP("features", "", "", "Item features")
	getStoreitemCmd.Flags().StringP("availableDate", "", "", "Item available date")
	getStoreitemCmd.Flags().BoolP("activeOnly", "", true, "Active only filter. Default true.")
	getStoreitemCmd.Flags().StringP("region", "", "", "Region")
	getStoreitemCmd.Flags().StringP("sortBy", "", "", "Sort by")
	getStoreitemCmd.Flags().StringP("storeId", "", "", "Store ID")
	getStoreitemCmd.Flags().StringP("tags", "", "", "Tags")
	getStoreitemCmd.Flags().Int32P("offset", "", 0, "Pagination offset")
	getStoreitemCmd.Flags().Int32P("limit", "", 20, "Pagination limit")

}
