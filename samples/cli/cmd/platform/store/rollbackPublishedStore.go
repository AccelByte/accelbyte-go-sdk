// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package store

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RollbackPublishedStoreCmd represents the RollbackPublishedStore command
var RollbackPublishedStoreCmd = &cobra.Command{
	Use:   "rollbackPublishedStore",
	Short: "Rollback published store",
	Long:  `Rollback published store`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &store.RollbackPublishedStoreParams{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := storeService.RollbackPublishedStore(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	RollbackPublishedStoreCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = RollbackPublishedStoreCmd.MarkFlagRequired("namespace")
}
