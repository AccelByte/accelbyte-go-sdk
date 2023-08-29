// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicItemTypes

import (
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/public_item_types"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicListItemTypesCmd represents the PublicListItemTypes command
var PublicListItemTypesCmd = &cobra.Command{
	Use:   "publicListItemTypes",
	Short: "Public list item types",
	Long:  `Public list item types`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicItemTypesService := &inventory.PublicItemTypesService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &public_item_types.PublicListItemTypesParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
		}
		ok, errOK := publicItemTypesService.PublicListItemTypesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListItemTypesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListItemTypesCmd.MarkFlagRequired("namespace")
	PublicListItemTypesCmd.Flags().Int64("limit", 20, "Limit")
	PublicListItemTypesCmd.Flags().Int64("offset", 0, "Offset")
	PublicListItemTypesCmd.Flags().String("sortBy", "", "Sort by")
}
