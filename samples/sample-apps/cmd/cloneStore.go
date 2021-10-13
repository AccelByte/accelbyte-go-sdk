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

// cloneStoreCmd represents the cloneStore command
var cloneStoreCmd = &cobra.Command{
	Use:   "cloneStore",
	Short: "Clone one store to another store. Source store and target store should in same namespace, same region and same language.",
	Long:  `Clone one store to another store. Source store and target store should in same namespace, same region and same language.`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		sourceStoreId := cmd.Flag("sourceStoreId").Value.String()
		targetStoreId := cmd.Flag("targetStoreId").Value.String()
		storeService := &service.StoreService{
			OauthService: &iam.OAuth20Service{
				Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
				ConfigRepository: &repository.ConfigRepositoryImpl{},
				TokenRepository:  &repository.TokenRepositoryImpl{},
			},
			PlatformService: factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
		}
		storeInfo, err := storeService.CloneStore(namespace, sourceStoreId, targetStoreId)
		if err != nil {
			return err
		}
		response, err := json.Marshal(storeInfo)
		if err != nil {
			return err
		}
		logrus.Infof("Response %s", response)
		return nil
	},
}

func init() {
	rootCmd.AddCommand(cloneStoreCmd)
	cloneStoreCmd.Flags().StringP("namespace", "n", "", "Store namespace")
	cloneStoreCmd.MarkFlagRequired("namespace")
	cloneStoreCmd.Flags().StringP("sourceStoreId", "s", "", "Source store UD")
	cloneStoreCmd.MarkFlagRequired("sourceStoreId")
	cloneStoreCmd.Flags().StringP("targetStoreId", "t", "", "Target store ID")
	cloneStoreCmd.MarkFlagRequired("targetStoreId")
}
