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

// GetPublishedStoreBackupCmd represents the GetPublishedStoreBackup command
var GetPublishedStoreBackupCmd = &cobra.Command{
	Use:   "getPublishedStoreBackup",
	Short: "Get published store backup",
	Long:  `Get published store backup`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &store.GetPublishedStoreBackupParams{
			Namespace: namespace,
		}
		ok, err := storeService.GetPublishedStoreBackupShort(input)
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
	GetPublishedStoreBackupCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetPublishedStoreBackupCmd.MarkFlagRequired("namespace")
}
