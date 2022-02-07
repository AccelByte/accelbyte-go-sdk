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
)

// CloneStoreCmd represents the CloneStore command
var CloneStoreCmd = &cobra.Command{
	Use:   "cloneStore",
	Short: "Clone store",
	Long:  `Clone store`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		targetStoreId, _ := cmd.Flags().GetString("targetStoreId")
		input := &store.CloneStoreParams{
			Namespace:     namespace,
			StoreID:       storeId,
			TargetStoreID: &targetStoreId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := storeService.CloneStore(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	CloneStoreCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CloneStoreCmd.MarkFlagRequired("namespace")
	CloneStoreCmd.Flags().StringP("storeId", "", "", "Store id")
	_ = CloneStoreCmd.MarkFlagRequired("storeId")
	CloneStoreCmd.Flags().StringP("targetStoreId", "", "", "Target store id")
}
