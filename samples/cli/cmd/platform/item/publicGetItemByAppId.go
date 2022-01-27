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

// publicGetItemByAppIdCmd represents the publicGetItemByAppId command
var publicGetItemByAppIdCmd = &cobra.Command{
	Use:   "publicGetItemByAppId",
	Short: "Public get item by app id",
	Long:  `Public get item by app id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		appId, _ := cmd.Flags().GetString("appId")
		language, _ := cmd.Flags().GetString("language")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.PublicGetItemByAppIDParams{
			Namespace: namespace,
			Language:  &language,
			Region:    &region,
			StoreID:   &storeId,
			AppID:     appId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.PublicGetItemByAppID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetItemByAppIdCmd)
	publicGetItemByAppIdCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetItemByAppIdCmd.MarkFlagRequired("namespace")
	publicGetItemByAppIdCmd.Flags().StringP("language", "le", " ", "Language")
	publicGetItemByAppIdCmd.Flags().StringP("region", "rn", " ", "Region")
	publicGetItemByAppIdCmd.Flags().StringP("storeId", "sd", " ", "Store id")
	publicGetItemByAppIdCmd.Flags().StringP("appId", "ad", " ", "App id")
	_ = publicGetItemByAppIdCmd.MarkFlagRequired("appId")
}
