// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package item

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteItemCmd represents the DeleteItem command
var DeleteItemCmd = &cobra.Command{
	Use:   "deleteItem",
	Short: "Delete item",
	Long:  `Delete item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.DeleteItemParams{
			ItemID:    itemId,
			Namespace: namespace,
			StoreID:   &storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := itemService.DeleteItem(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DeleteItemCmd.Flags().StringP("itemId", "", "", "Item id")
	_ = DeleteItemCmd.MarkFlagRequired("itemId")
	DeleteItemCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteItemCmd.MarkFlagRequired("namespace")
	DeleteItemCmd.Flags().StringP("storeId", "", "", "Store id")
}
