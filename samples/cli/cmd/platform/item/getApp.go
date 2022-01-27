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

// GetAppCmd represents the GetApp command
var GetAppCmd = &cobra.Command{
	Use:   "GetApp",
	Short: "Get app",
	Long:  `Get app`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.GetAppParams{
			ItemID:     itemId,
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			StoreID:    &storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.GetApp(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetAppCmd.Flags().StringP("itemId", "id", " ", "Item id")
	_ = GetAppCmd.MarkFlagRequired("itemId")
	GetAppCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetAppCmd.MarkFlagRequired("namespace")
	GetAppCmd.Flags().BoolP("activeOnly", "ay", false, "Active only")
	GetAppCmd.Flags().StringP("storeId", "sd", " ", "Store id")
}
