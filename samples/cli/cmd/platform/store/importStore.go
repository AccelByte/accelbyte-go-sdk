// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

import (
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ImportStoreCmd represents the ImportStore command
var ImportStoreCmd = &cobra.Command{
	Use:   "importStore",
	Short: "Import store",
	Long:  `Import store`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", output)
		file, err := os.Open(output)
		if err != nil {
			return err
		}
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &store.ImportStoreParams{
			File:      file,
			Namespace: namespace,
			StoreID:   &storeId,
		}
		ok, errOK := storeService.ImportStoreShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ImportStoreCmd.Flags().String("file", "", "File")
	ImportStoreCmd.Flags().String("namespace", "", "Namespace")
	_ = ImportStoreCmd.MarkFlagRequired("namespace")
	ImportStoreCmd.Flags().String("storeId", "", "Store id")
}
