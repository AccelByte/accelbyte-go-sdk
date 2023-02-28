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

// SearchItemTypeConfigCmd represents the SearchItemTypeConfig command
var SearchItemTypeConfigCmd = &cobra.Command{
	Use:   "searchItemTypeConfig",
	Short: "Search item type config",
	Long:  `Search item type config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemType, _ := cmd.Flags().GetString("itemType")
		clazz, _ := cmd.Flags().GetString("clazz")
		input := &item.SearchItemTypeConfigParams{
			Clazz:    &clazz,
			ItemType: itemType,
		}
		ok, errOK := itemService.SearchItemTypeConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SearchItemTypeConfigCmd.Flags().String("clazz", "", "Clazz")
	SearchItemTypeConfigCmd.Flags().String("itemType", "", "Item type")
	_ = SearchItemTypeConfigCmd.MarkFlagRequired("itemType")
}
