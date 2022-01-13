// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
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
		input := &public_game_record.PostGameRecordHandlerV1Params{
			Namespace: namespace,
			Key:       key,
			Body:      content,
		}
		cloudSaveService := &cloudsave.PublicGameRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		err = cloudSaveService.PostGameRecordHandlerV1(input)
		if err != nil {
			return err
		}
		logrus.Info("Game records successfully created")
		return nil
	},
}

func init() {
	RootCmd.AddCommand(createGameRecordCmd)
	createGameRecordCmd.Flags().StringP("key", "k", "", "Game record key")
	_ = createGameRecordCmd.MarkFlagRequired("key")
	createGameRecordCmd.Flags().StringP("namespace", "n", "", "Namespace")
	_ = createGameRecordCmd.MarkFlagRequired("namespace")
	createGameRecordCmd.Flags().StringP("content", "c", "", "Content of game record, string json")
	_ = createGameRecordCmd.MarkFlagRequired("content")

}
