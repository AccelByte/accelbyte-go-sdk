// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateAppCmd represents the updateApp command
var updateAppCmd = &cobra.Command{
	Use:   "updateApp",
	Short: "Update app",
	Long:  `Update app`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.AppUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &item.UpdateAppParams{
			Body:      body,
			ItemID:    itemId,
			Namespace: namespace,
			StoreID:   storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.UpdateApp(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateAppCmd)
	updateAppCmd.Flags().StringP("body", "b", " ", "Body")
	updateAppCmd.Flags().StringP("itemId", "i", " ", "Item id")
	_ = updateAppCmd.MarkFlagRequired("itemId")
	updateAppCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateAppCmd.MarkFlagRequired("namespace")
	updateAppCmd.Flags().StringP("storeId", "s", " ", "Store id")
	_ = updateAppCmd.MarkFlagRequired("storeId")
}