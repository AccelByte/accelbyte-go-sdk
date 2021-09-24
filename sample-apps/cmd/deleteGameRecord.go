// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"

	"github.com/spf13/cobra"
)

// deleteGameRecordCmd represents the deleteGameRecord command
var deleteGameRecordCmd = &cobra.Command{
	Use:   "deleteGameRecord",
	Short: "Delete game record",
	Long:  `Delete game record`,
	RunE: func(cmd *cobra.Command, args []string) error {
		key := cmd.Flag("key").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		cloudSaveService := &service.CloudSaveService{
			CloudSaveServiceClient: factory.NewCloudSaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:        &repository.TokenRepositoryImpl{},
		}
		err := cloudSaveService.DeleteGameRecordHandlerV1(key, namespace)
		if err != nil {
			return err
		}
		logrus.Info("Game record deleted")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteGameRecordCmd)
	deleteGameRecordCmd.Flags().StringP("key", "k", "", "Game record key")
	deleteGameRecordCmd.MarkFlagRequired("key")
	deleteGameRecordCmd.Flags().StringP("namespace", "n", "", "Game record key")
	deleteGameRecordCmd.MarkFlagRequired("namespace")
}
