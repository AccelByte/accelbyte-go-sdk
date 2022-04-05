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

// PublicGetItemDynamicDataCmd represents the PublicGetItemDynamicData command
var PublicGetItemDynamicDataCmd = &cobra.Command{
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
		ok, err := itemService.PublicGetItemDynamicDataShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	PublicGetItemDynamicDataCmd.Flags().StringP("itemId", "", "", "Item id")
	_ = PublicGetItemDynamicDataCmd.MarkFlagRequired("itemId")
	PublicGetItemDynamicDataCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetItemDynamicDataCmd.MarkFlagRequired("namespace")
}
