// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminInventories

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_inventories"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminPurchasableCmd represents the AdminPurchasable command
var AdminPurchasableCmd = &cobra.Command{
	Use:   "adminPurchasable",
	Short: "Admin purchasable",
	Long:  `Admin purchasable`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminInventoriesService := &inventory.AdminInventoriesService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsPurchaseValidationReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_inventories.AdminPurchasableParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := adminInventoriesService.AdminPurchasableShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminPurchasableCmd.Flags().String("body", "", "Body")
	_ = AdminPurchasableCmd.MarkFlagRequired("body")
	AdminPurchasableCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPurchasableCmd.MarkFlagRequired("namespace")
	AdminPurchasableCmd.Flags().String("userId", "", "User id")
	_ = AdminPurchasableCmd.MarkFlagRequired("userId")
}
