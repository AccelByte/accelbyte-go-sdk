// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
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
		namespace := cmd.Flag("namespace").Value.String()
		storeId := cmd.Flag("storeId").Value.String()
		storeService := &service.StoreService{
			OauthService: &iam.OAuth20Service{
				Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
				ConfigRepository: &repository.ConfigRepositoryImpl{},
				TokenRepository:  &repository.TokenRepositoryImpl{},
			},
			PlatformService: factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
		}
		deletedStore, err := storeService.DeleteStore(namespace, storeId)
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
	rootCmd.AddCommand(deleteStoreCmd)
	deleteStoreCmd.Flags().StringP("namespace", "n", "", "Store namespace")
	deleteStoreCmd.MarkFlagRequired("namespace")
	deleteStoreCmd.Flags().StringP("storeId", "", "", "Store ID")
	deleteStoreCmd.MarkFlagRequired("storeId")
}
