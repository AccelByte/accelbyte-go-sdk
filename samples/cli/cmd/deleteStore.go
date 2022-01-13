// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteStoreCmd represents the deleteStore command
var deleteStoreCmd = &cobra.Command{
	Use:   "deleteStore",
	Short: "Delete draft store",
	Long:  `Delete draft store`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		storeId := cmd.Flag("storeId").Value.String()
		input := &store.DeleteStoreParams{
			Namespace: namespace,
			StoreID:   storeId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		deletedStore, err := storeService.DeleteStore(input)
		if err != nil {
			return err
		}
		response, err := json.Marshal(deletedStore)
		if err != nil {
			return err
		}
		logrus.Infof("Response %s", response)
		return nil
	},
}

func init() {
	RootCmd.AddCommand(deleteStoreCmd)
	deleteStoreCmd.Flags().StringP("namespace", "n", "", "Store namespace")
	_ = deleteStoreCmd.MarkFlagRequired("namespace")
	deleteStoreCmd.Flags().StringP("storeId", "", "", "Store ID")
	_ = deleteStoreCmd.MarkFlagRequired("storeId")
}
