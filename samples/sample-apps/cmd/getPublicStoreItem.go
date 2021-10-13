// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"

	"github.com/spf13/cobra"
)

// getPublicStoreItemCmd represents the getPublicStoreItem command
var getPublicStoreItemCmd = &cobra.Command{
	Use:   "getPublicStoreItem",
	Short: "Get public store items",
	Long:  `Get public store items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appType := cmd.Flag("appType").Value.String()
		baseAppId := cmd.Flag("baseAppId").Value.String()
		categoryPath := cmd.Flag("categoryPath").Value.String()
		features := cmd.Flag("features").Value.String()
		itemType := cmd.Flag("itemType").Value.String()
		language := cmd.Flag("language").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
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

		itemService := &service.ItemService{
			PlatformService: factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			OauthService: &iam.OAuth20Service{
				Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
				ConfigRepository: &repository.ConfigRepositoryImpl{},
				TokenRepository:  &repository.TokenRepositoryImpl{},
			},
		}
		items, err := itemService.PublicQueryItems(namespace, &language, &appType, &baseAppId, &categoryPath, &features, &itemType, &region, &sortBy, &tags, &storeId, &limit, &offset)
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
	rootCmd.AddCommand(getPublicStoreItemCmd)

	getPublicStoreItemCmd.Flags().StringP("appType", "", "", "Sub type of APP item")
	getPublicStoreItemCmd.Flags().StringP("baseAppId", "", "", "Base APP ID")
	getPublicStoreItemCmd.Flags().StringP("categoryPath", "", "", "Category Path")
	getPublicStoreItemCmd.Flags().StringP("features", "", "", "Item features")
	getPublicStoreItemCmd.Flags().StringP("itemType", "", "", "Item type")
	getPublicStoreItemCmd.Flags().StringP("language", "", "", "Item language")
	getPublicStoreItemCmd.Flags().StringP("namespace", "", "", "Namespace")
	getPublicStoreItemCmd.MarkFlagRequired("namespace")
	getPublicStoreItemCmd.Flags().StringP("region", "", "", "Region")
	getPublicStoreItemCmd.Flags().StringP("sortBy", "", "", "Sort by")
	getPublicStoreItemCmd.Flags().StringP("storeId", "", "", "Store ID")
	getPublicStoreItemCmd.Flags().StringP("tags", "", "", "Tags")
	getPublicStoreItemCmd.Flags().Int32P("offset", "", 0, "Pagination offset")
	getPublicStoreItemCmd.Flags().Int32P("limit", "", 20, "Pagination limit")
}
