// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// GetItemByAppIdCmd represents the GetItemByAppId command
var GetItemByAppIdCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	GetItemByAppIdCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetItemByAppIdCmd.MarkFlagRequired("namespace")
	GetItemByAppIdCmd.Flags().BoolP("activeOnly", "", false, "Active only")
	GetItemByAppIdCmd.Flags().StringP("storeId", "", "", "Store id")
	GetItemByAppIdCmd.Flags().StringP("appId", "", "", "App id")
	_ = GetItemByAppIdCmd.MarkFlagRequired("appId")
}
