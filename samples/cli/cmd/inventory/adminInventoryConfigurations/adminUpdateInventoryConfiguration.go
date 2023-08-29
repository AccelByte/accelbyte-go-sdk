// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminInventoryConfigurations

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_inventory_configurations"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateInventoryConfigurationCmd represents the AdminUpdateInventoryConfiguration command
var AdminUpdateInventoryConfigurationCmd = &cobra.Command{
	Use:   "adminUpdateInventoryConfiguration",
	Short: "Admin update inventory configuration",
	Long:  `Admin update inventory configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminInventoryConfigurationsService := &inventory.AdminInventoryConfigurationsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsInventoryConfigurationReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		inventoryConfigurationId, _ := cmd.Flags().GetString("inventoryConfigurationId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_inventory_configurations.AdminUpdateInventoryConfigurationParams{
			Body:                     body,
			InventoryConfigurationID: inventoryConfigurationId,
			Namespace:                namespace,
		}
		ok, errOK := adminInventoryConfigurationsService.AdminUpdateInventoryConfigurationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateInventoryConfigurationCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateInventoryConfigurationCmd.MarkFlagRequired("body")
	AdminUpdateInventoryConfigurationCmd.Flags().String("inventoryConfigurationId", "", "Inventory configuration id")
	_ = AdminUpdateInventoryConfigurationCmd.MarkFlagRequired("inventoryConfigurationId")
	AdminUpdateInventoryConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateInventoryConfigurationCmd.MarkFlagRequired("namespace")
}
