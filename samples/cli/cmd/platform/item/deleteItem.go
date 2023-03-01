// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
		force, _ := cmd.Flags().GetBool("force")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.DeleteItemParams{
			ItemID:    itemId,
			Namespace: namespace,
			Force:     &force,
			StoreID:   &storeId,
		}
		errNoContent := itemService.DeleteItemShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteItemCmd.Flags().String("itemId", "", "Item id")
	_ = DeleteItemCmd.MarkFlagRequired("itemId")
	DeleteItemCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteItemCmd.MarkFlagRequired("namespace")
	DeleteItemCmd.Flags().Bool("force", false, "Force")
	DeleteItemCmd.Flags().String("storeId", "", "Store id")
}
