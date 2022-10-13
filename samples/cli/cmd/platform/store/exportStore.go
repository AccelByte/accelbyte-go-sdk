// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

import (
	"bytes"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ExportStoreCmd represents the ExportStore command
var ExportStoreCmd = &cobra.Command{
	Use:   "exportStore",
	Short: "Export store",
	Long:  `Export store`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &store.ExportStoreParams{
			Namespace: namespace,
			StoreID:   storeId,
		}
		writer := bytes.NewBuffer(nil)
		ok, err := storeService.ExportStoreShort(input, writer)
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
	ExportStoreCmd.Flags().String("namespace", "", "Namespace")
	_ = ExportStoreCmd.MarkFlagRequired("namespace")
	ExportStoreCmd.Flags().String("storeId", "", "Store id")
	_ = ExportStoreCmd.MarkFlagRequired("storeId")
}
