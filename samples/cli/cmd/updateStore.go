// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

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

// updateStoreCmd represents the updateStore command
var updateStoreCmd = &cobra.Command{
	Use:   "updateStore",
	Short: "Update draft store",
	Long:  `Update draft store`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		defaultLanguage := cmd.Flag("language").Value.String()
		defaultRegion := cmd.Flag("region").Value.String()
		description := cmd.Flag("description").Value.String()
		title := cmd.Flag("title").Value.String()
		storeId := cmd.Flag("storeId").Value.String()
		storeUpdate := &platformclientmodels.StoreUpdate{
			DefaultLanguage: defaultLanguage,
			DefaultRegion:   defaultRegion,
			Description:     description,
			Title:           &title,
		}
		input := &store.UpdateStoreParams{
			Body:      storeUpdate,
			Namespace: namespace,
			StoreID:   storeId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		updateStore, err := storeService.UpdateStore(input)
		if err != nil {
			return err
		}
		response, err := json.Marshal(updateStore)
		if err != nil {
			return err
		}
		logrus.Infof("Response %s", response)
		return nil
	},
}

func init() {
	RootCmd.AddCommand(updateStoreCmd)
	updateStoreCmd.Flags().StringP("namespace", "n", "", "Store namespace")
	_ = updateStoreCmd.MarkFlagRequired("namespace")
	updateStoreCmd.Flags().StringP("title", "t", "", "Store title")
	_ = updateStoreCmd.MarkFlagRequired("title")
	updateStoreCmd.Flags().StringP("region", "r", "", "Store region")
	_ = updateStoreCmd.MarkFlagRequired("region")
	updateStoreCmd.Flags().StringP("language", "l", "", "Store language")
	_ = updateStoreCmd.MarkFlagRequired("language")
	updateStoreCmd.Flags().StringP("storeId", "", "", "Store ID")
	_ = updateStoreCmd.MarkFlagRequired("storeId")
	updateStoreCmd.Flags().StringP("description", "d", "", "Store description")
}
