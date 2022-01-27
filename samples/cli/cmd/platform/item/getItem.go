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

// getItemCmd represents the getItem command
var getItemCmd = &cobra.Command{
	Use:   "getItem",
	Short: "Get item",
	Long:  `Get item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.GetItemParams{
			ItemID:     itemId,
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			StoreID:    &storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.GetItem(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getItemCmd)
	getItemCmd.Flags().StringP("itemId", "id", " ", "Item id")
	_ = getItemCmd.MarkFlagRequired("itemId")
	getItemCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getItemCmd.MarkFlagRequired("namespace")
	getItemCmd.Flags().BoolP("activeOnly", "ay", false, "Active only")
	getItemCmd.Flags().StringP("storeId", "sd", " ", "Store id")
}
