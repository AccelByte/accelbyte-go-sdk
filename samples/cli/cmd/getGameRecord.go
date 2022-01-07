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
		cloudSaveService := &cloudsave.PublicGameRecordService{
			Client:          factory.NewCloudSaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &public_game_record.GetGameRecordHandlerV1Params{
			Namespace: namespace,
			Key:       key,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		gameRecords, err := cloudSaveService.GetGameRecordHandlerV1(input)
		if err != nil {
			return err
		}
		response, err := json.Marshal(gameRecords)
		if err != nil {
			return err
		}
		logrus.Infof("Response: %s", response)
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getGameRecordCmd)
	getGameRecordCmd.Flags().StringP("key", "k", "", "Game record key")
	_ = getGameRecordCmd.MarkFlagRequired("key")
	getGameRecordCmd.Flags().StringP("namespace", "n", "", "Game record key")
	_ = getGameRecordCmd.MarkFlagRequired("namespace")

}
