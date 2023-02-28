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

// PublicGetItemByAppIdCmd represents the PublicGetItemByAppId command
var PublicGetItemByAppIdCmd = &cobra.Command{
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
		ok, errOK := itemService.PublicGetItemByAppIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetItemByAppIdCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetItemByAppIdCmd.MarkFlagRequired("namespace")
	PublicGetItemByAppIdCmd.Flags().String("language", "", "Language")
	PublicGetItemByAppIdCmd.Flags().String("region", "", "Region")
	PublicGetItemByAppIdCmd.Flags().String("storeId", "", "Store id")
	PublicGetItemByAppIdCmd.Flags().String("appId", "", "App id")
	_ = PublicGetItemByAppIdCmd.MarkFlagRequired("appId")
}
