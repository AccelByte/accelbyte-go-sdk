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
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateStoreCmd represents the UpdateStore command
var UpdateStoreCmd = &cobra.Command{
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
		ok, err := storeService.UpdateStoreShort(input)
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
	UpdateStoreCmd.Flags().StringP("body", "", "", "Body")
	UpdateStoreCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateStoreCmd.MarkFlagRequired("namespace")
	UpdateStoreCmd.Flags().StringP("storeId", "", "", "Store id")
	_ = UpdateStoreCmd.MarkFlagRequired("storeId")
}
