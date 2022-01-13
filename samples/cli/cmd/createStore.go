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

// createStoreCmd represents the createStore command
var createStoreCmd = &cobra.Command{
	Use:   "createStore",
	Short: "Create store",
	Long:  `Create store`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		defaultLang := cmd.Flag("language").Value.String()
		defaultRegion := cmd.Flag("region").Value.String()
		description := cmd.Flag("description").Value.String()
		title := cmd.Flag("title").Value.String()
		storeCreateParam := &platformclientmodels.StoreCreate{
			DefaultLanguage:    defaultLang,
			DefaultRegion:      defaultRegion,
			Description:        description,
			SupportedLanguages: []string{},
			SupportedRegions:   []string{},
			Title:              &title,
		}
		input := &store.CreateStoreParams{
			Body:      storeCreateParam,
			Namespace: namespace,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		createStore, err := storeService.CreateStore(input)
		if err != nil {
			return err
		}
		response, err := json.Marshal(createStore)
		if err != nil {
			return err
		}
		logrus.Infof("Response: %s", response)
		return nil
	},
}

func init() {
	RootCmd.AddCommand(createStoreCmd)
	createStoreCmd.Flags().StringP("namespace", "n", "", "Store namespace")
	_ = createStoreCmd.MarkFlagRequired("namespace")
	createStoreCmd.Flags().StringP("title", "t", "", "Store title")
	_ = createStoreCmd.MarkFlagRequired("title")
	createStoreCmd.Flags().StringP("region", "r", "", "Store region")
	_ = createStoreCmd.MarkFlagRequired("region")
	createStoreCmd.Flags().StringP("language", "l", "", "Store language")
	_ = createStoreCmd.MarkFlagRequired("language")
	createStoreCmd.Flags().StringP("description", "d", "", "Store description")
}
