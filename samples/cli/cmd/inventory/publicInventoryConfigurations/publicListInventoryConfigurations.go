// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicInventoryConfigurations

import (
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/public_inventory_configurations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicListInventoryConfigurationsCmd represents the PublicListInventoryConfigurations command
var PublicListInventoryConfigurationsCmd = &cobra.Command{
	Use:   "publicListInventoryConfigurations",
	Short: "Public list inventory configurations",
	Long:  `Public list inventory configurations`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicInventoryConfigurationsService := &inventory.PublicInventoryConfigurationsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		code, _ := cmd.Flags().GetString("code")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &public_inventory_configurations.PublicListInventoryConfigurationsParams{
			Namespace: namespace,
			Code:      &code,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
		}
		ok, errOK := publicInventoryConfigurationsService.PublicListInventoryConfigurationsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListInventoryConfigurationsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListInventoryConfigurationsCmd.MarkFlagRequired("namespace")
	PublicListInventoryConfigurationsCmd.Flags().String("code", "", "Code")
	PublicListInventoryConfigurationsCmd.Flags().Int64("limit", 20, "Limit")
	PublicListInventoryConfigurationsCmd.Flags().Int64("offset", 0, "Offset")
	PublicListInventoryConfigurationsCmd.Flags().String("sortBy", "", "Sort by")
}
