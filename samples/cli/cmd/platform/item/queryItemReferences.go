// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryItemReferencesCmd represents the QueryItemReferences command
var QueryItemReferencesCmd = &cobra.Command{
	Use:   "queryItemReferences",
	Short: "Query item references",
	Long:  `Query item references`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		featuresToCheckString := cmd.Flag("featuresToCheck").Value.String()
		var featuresToCheck []string
		errFeaturesToCheck := json.Unmarshal([]byte(featuresToCheckString), &featuresToCheck)
		if errFeaturesToCheck != nil {
			return errFeaturesToCheck
		}
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.QueryItemReferencesParams{
			ItemID:          itemId,
			Namespace:       namespace,
			FeaturesToCheck: featuresToCheck,
			StoreID:         &storeId,
		}
		ok, errOK := itemService.QueryItemReferencesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryItemReferencesCmd.Flags().String("itemId", "", "Item id")
	_ = QueryItemReferencesCmd.MarkFlagRequired("itemId")
	QueryItemReferencesCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryItemReferencesCmd.MarkFlagRequired("namespace")
	QueryItemReferencesCmd.Flags().String("featuresToCheck", "", "Features to check")
	QueryItemReferencesCmd.Flags().String("storeId", "", "Store id")
}
