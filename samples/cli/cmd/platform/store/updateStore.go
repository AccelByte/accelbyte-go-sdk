// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package store

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateStoreCmd represents the updateStore command
var updateStoreCmd = &cobra.Command{
	Use:   "updateStore",
	Short: "Update store",
	Long:  `Update store`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.StoreUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &store.UpdateStoreParams{
			Body:      body,
			Namespace: namespace,
			StoreID:   storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := storeService.UpdateStore(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateStoreCmd)
	updateStoreCmd.Flags().StringP("body", "by", " ", "Body")
	updateStoreCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = updateStoreCmd.MarkFlagRequired("namespace")
	updateStoreCmd.Flags().StringP("storeId", "sd", " ", "Store id")
	_ = updateStoreCmd.MarkFlagRequired("storeId")
}
