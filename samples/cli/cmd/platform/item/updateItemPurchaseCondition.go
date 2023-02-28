// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateItemPurchaseConditionCmd represents the UpdateItemPurchaseCondition command
var UpdateItemPurchaseConditionCmd = &cobra.Command{
	Use:   "updateItemPurchaseCondition",
	Short: "Update item purchase condition",
	Long:  `Update item purchase condition`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PurchaseConditionUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &item.UpdateItemPurchaseConditionParams{
			Body:      body,
			ItemID:    itemId,
			Namespace: namespace,
			StoreID:   storeId,
		}
		ok, errOK := itemService.UpdateItemPurchaseConditionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateItemPurchaseConditionCmd.Flags().String("body", "", "Body")
	UpdateItemPurchaseConditionCmd.Flags().String("itemId", "", "Item id")
	_ = UpdateItemPurchaseConditionCmd.MarkFlagRequired("itemId")
	UpdateItemPurchaseConditionCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateItemPurchaseConditionCmd.MarkFlagRequired("namespace")
	UpdateItemPurchaseConditionCmd.Flags().String("storeId", "", "Store id")
	_ = UpdateItemPurchaseConditionCmd.MarkFlagRequired("storeId")
}
