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

// SyncInGameItemCmd represents the SyncInGameItem command
var SyncInGameItemCmd = &cobra.Command{
	Use:   "syncInGameItem",
	Short: "Sync in game item",
	Long:  `Sync in game item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.InGameItemSync
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &item.SyncInGameItemParams{
			Body:      body,
			Namespace: namespace,
			StoreID:   storeId,
		}
		ok, err := itemService.SyncInGameItemShort(input)
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
	SyncInGameItemCmd.Flags().String("body", "", "Body")
	SyncInGameItemCmd.Flags().String("namespace", "", "Namespace")
	_ = SyncInGameItemCmd.MarkFlagRequired("namespace")
	SyncInGameItemCmd.Flags().String("storeId", "", "Store id")
	_ = SyncInGameItemCmd.MarkFlagRequired("storeId")
}
