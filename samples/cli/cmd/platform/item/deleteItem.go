// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package item

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteItemCmd represents the deleteItem command
var deleteItemCmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(deleteItemCmd)
	deleteItemCmd.Flags().StringP("itemId", "id", " ", "Item id")
	_ = deleteItemCmd.MarkFlagRequired("itemId")
	deleteItemCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = deleteItemCmd.MarkFlagRequired("namespace")
	deleteItemCmd.Flags().StringP("storeId", "sd", " ", "Store id")
}
