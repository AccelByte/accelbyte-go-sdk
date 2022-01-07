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

// getStoresCmd represents the getStores command
var getStoresCmd = &cobra.Command{
	Use:   "getStores",
	Short: "Get stores. Required admin access token.",
	Long:  `Get stores. Required admin access token.`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		input := &store.ListStoresParams{
			Namespace: namespace,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		listStore, err := storeService.ListStores(input)
		if err != nil {
			return err
		}
		response, err := json.Marshal(listStore)
		if err != nil {
			return err
		}
		logrus.Infof("Response %s", response)
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getStoresCmd)
	getStoresCmd.Flags().StringP("namespace", "n", "", "Store namespace")
	_ = getStoresCmd.MarkFlagRequired("namespace")
}
