// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetAppCmd represents the publicGetApp command
var publicGetAppCmd = &cobra.Command{
	Use:   "publicGetApp",
	Short: "Public get app",
	Long:  `Public get app`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		language, _ := cmd.Flags().GetString("language")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.PublicGetAppParams{
			ItemID:    itemId,
			Namespace: namespace,
			Language:  &language,
			Region:    &region,
			StoreID:   &storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.PublicGetApp(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetAppCmd)
	publicGetAppCmd.Flags().StringP("itemId", "i", " ", "Item id")
	_ = publicGetAppCmd.MarkFlagRequired("itemId")
	publicGetAppCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetAppCmd.MarkFlagRequired("namespace")
	publicGetAppCmd.Flags().StringP("language", "l", " ", "Language")
	publicGetAppCmd.Flags().StringP("region", "r", " ", "Region")
	publicGetAppCmd.Flags().StringP("storeId", "s", " ", "Store id")
}