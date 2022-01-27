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

// getItemByAppIdCmd represents the getItemByAppId command
var getItemByAppIdCmd = &cobra.Command{
	Use:   "getItemByAppId",
	Short: "Get item by app id",
	Long:  `Get item by app id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		appId, _ := cmd.Flags().GetString("appId")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.GetItemByAppIDParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			StoreID:    &storeId,
			AppID:      appId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.GetItemByAppID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getItemByAppIdCmd)
	getItemByAppIdCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getItemByAppIdCmd.MarkFlagRequired("namespace")
	getItemByAppIdCmd.Flags().BoolP("activeOnly", "ay", false, "Active only")
	getItemByAppIdCmd.Flags().StringP("storeId", "sd", " ", "Store id")
	getItemByAppIdCmd.Flags().StringP("appId", "ad", " ", "App id")
	_ = getItemByAppIdCmd.MarkFlagRequired("appId")
}
