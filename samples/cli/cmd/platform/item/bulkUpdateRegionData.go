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

// BulkUpdateRegionDataCmd represents the BulkUpdateRegionData command
var BulkUpdateRegionDataCmd = &cobra.Command{
	Use:   "bulkUpdateRegionData",
	Short: "Bulk update region data",
	Long:  `Bulk update region data`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.BulkRegionDataChangeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &item.BulkUpdateRegionDataParams{
			Body:      body,
			Namespace: namespace,
			StoreID:   storeId,
		}
		errNoContent := itemService.BulkUpdateRegionDataShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	BulkUpdateRegionDataCmd.Flags().String("body", "", "Body")
	BulkUpdateRegionDataCmd.Flags().String("namespace", "", "Namespace")
	_ = BulkUpdateRegionDataCmd.MarkFlagRequired("namespace")
	BulkUpdateRegionDataCmd.Flags().String("storeId", "", "Store id")
	_ = BulkUpdateRegionDataCmd.MarkFlagRequired("storeId")
}
