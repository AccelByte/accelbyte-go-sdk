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

// UpdateItemCmd represents the UpdateItem command
var UpdateItemCmd = &cobra.Command{
	Use:   "updateItem",
	Short: "Update item",
	Long:  `Update item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.ItemUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.UpdateItemParams{
			Body:      body,
			ItemID:    itemId,
			Namespace: namespace,
			StoreID:   storeId,
		}
		ok, errOK := itemService.UpdateItemShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateItemCmd.Flags().String("body", "", "Body")
	_ = UpdateItemCmd.MarkFlagRequired("body")
	UpdateItemCmd.Flags().String("itemId", "", "Item id")
	_ = UpdateItemCmd.MarkFlagRequired("itemId")
	UpdateItemCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateItemCmd.MarkFlagRequired("namespace")
	UpdateItemCmd.Flags().String("storeId", "", "Store id")
	_ = UpdateItemCmd.MarkFlagRequired("storeId")
}
