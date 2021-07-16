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

// getGameRecordCmd represents the getGameRecord command
var getGameRecordCmd = &cobra.Command{
	Use:   "getGameRecord",
	Short: "A brief description of your command",
	Long: `A longer description that spans multiple lines and likely contains examples
and usage of using your command. For example:

Cobra is a CLI library for Go that empowers applications.
This application is a tool to generate the needed files
to quickly create a Cobra application.`,
	RunE: func(cmd *cobra.Command, args []string) error {
		key := cmd.Flag("key").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		cloudSaveService := &service.CloudSaveService{
			CloudSaveServiceClient: factory.NewCloudSaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:        &repository.TokenRepositoryImpl{},
		}
		gameRecords, err := cloudSaveService.GetGameRecord(key, namespace)
		if err != nil {
			return err
		}
		response, err := json.Marshal(gameRecords)
		logrus.Infof("Response: %s", response)
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getGameRecordCmd)
	getGameRecordCmd.Flags().StringP("key", "k", "", "Game record key")
	getGameRecordCmd.MarkFlagRequired("key")
	getGameRecordCmd.Flags().StringP("namespace", "n", "", "Game record key")
	getGameRecordCmd.MarkFlagRequired("namespace")

}
