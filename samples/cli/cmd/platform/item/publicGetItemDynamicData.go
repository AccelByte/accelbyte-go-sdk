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

// publicGetItemDynamicDataCmd represents the publicGetItemDynamicData command
var publicGetItemDynamicDataCmd = &cobra.Command{
	Use:   "publicGetItemDynamicData",
	Short: "Public get item dynamic data",
	Long:  `Public get item dynamic data`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &item.PublicGetItemDynamicDataParams{
			ItemID:    itemId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.PublicGetItemDynamicData(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetItemDynamicDataCmd)
	publicGetItemDynamicDataCmd.Flags().StringP("itemId", "i", " ", "Item id")
	_ = publicGetItemDynamicDataCmd.MarkFlagRequired("itemId")
	publicGetItemDynamicDataCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetItemDynamicDataCmd.MarkFlagRequired("namespace")
}
