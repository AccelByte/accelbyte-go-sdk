// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// createGameRecordCmd represents the createCloudSave command
var createGameRecordCmd = &cobra.Command{
	Use:   "createGameRecord",
	Short: "Create or append game record",
	Long:  `Create or append game record`,
	RunE: func(cmd *cobra.Command, args []string) error {
		key := cmd.Flag("key").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		contentString := cmd.Flag("content").Value.String()
		var content map[string]string
		err := json.Unmarshal([]byte(contentString), &content)
		if err != nil {
			return err
		}
		cloudSaveService := &service.CloudSaveService{
			CloudSaveServiceClient: factory.NewCloudSaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:        &repository.TokenRepositoryImpl{},
		}
		err = cloudSaveService.CreateGameRecord(content, key, namespace)
		if err != nil {
			return err
		}
		logrus.Info("Game records successfully created")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(createGameRecordCmd)
	createGameRecordCmd.Flags().StringP("key", "k", "", "Game record key")
	createGameRecordCmd.MarkFlagRequired("key")
	createGameRecordCmd.Flags().StringP("namespace", "n", "", "Namespace")
	createGameRecordCmd.MarkFlagRequired("namespace")
	createGameRecordCmd.Flags().StringP("content", "c", "", "Content of game record, string json")
	createGameRecordCmd.MarkFlagRequired("content")

}
