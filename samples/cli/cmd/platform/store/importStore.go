// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package store

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"os"
)

// ImportStoreCmd represents the ImportStore command
var ImportStoreCmd = &cobra.Command{
	Use:   "ImportStore",
	Short: "Import store",
	Long:  `Import store`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("outputFilePath").Value.String()
		logrus.Infof("Output %v", output)
		file, err := os.Create(output)
		if err != nil {
			return err
		}
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &store.ImportStoreParams{
			File:      file,
			Namespace: namespace,
			StoreID:   &storeId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := storeService.ImportStore(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	ImportStoreCmd.Flags().StringP("file", "fe", " ", "File")
	ImportStoreCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = ImportStoreCmd.MarkFlagRequired("namespace")
	ImportStoreCmd.Flags().StringP("storeId", "sd", " ", "Store id")
}
