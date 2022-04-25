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

// GetItemDynamicDataCmd represents the GetItemDynamicData command
var GetItemDynamicDataCmd = &cobra.Command{
	Use:   "getItemDynamicData",
	Short: "Get item dynamic data",
	Long:  `Get item dynamic data`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &item.GetItemDynamicDataParams{
			ItemID:    itemId,
			Namespace: namespace,
		}
		ok, err := itemService.GetItemDynamicDataShort(input, nil)
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
	GetItemDynamicDataCmd.Flags().StringP("itemId", "", "", "Item id")
	_ = GetItemDynamicDataCmd.MarkFlagRequired("itemId")
	GetItemDynamicDataCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetItemDynamicDataCmd.MarkFlagRequired("namespace")
}
