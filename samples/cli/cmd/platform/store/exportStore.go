// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

import (
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
		errInput := storeService.ExportStoreShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	ExportStoreCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ExportStoreCmd.MarkFlagRequired("namespace")
	ExportStoreCmd.Flags().StringP("storeId", "", "", "Store id")
	_ = ExportStoreCmd.MarkFlagRequired("storeId")
}
