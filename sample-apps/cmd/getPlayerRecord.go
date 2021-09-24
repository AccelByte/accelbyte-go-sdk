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

// getPlayerRecordCmd represents the getPlayerRecord command
var getPlayerRecordCmd = &cobra.Command{
	Use:   "getPlayerRecord",
	Short: "Get player records",
	Long:  `Get player records`,
	RunE: func(cmd *cobra.Command, args []string) error {
		key := cmd.Flag("key").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		cloudSaveService := &service.CloudSaveService{
			CloudSaveServiceClient: factory.NewCloudSaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:        &repository.TokenRepositoryImpl{},
		}
		playerRecords, err := cloudSaveService.GetPlayerPublicRecordHandlerV1(userId, namespace, key)
		if err != nil {
			return err
		}
		response, err := json.Marshal(playerRecords)
		logrus.Infof("Response: %s", response)
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getPlayerRecordCmd)
	getPlayerRecordCmd.Flags().StringP("key", "k", "", "Player record key")
	getPlayerRecordCmd.MarkFlagRequired("key")
	getPlayerRecordCmd.Flags().StringP("namespace", "n", "", "Player namespace")
	getPlayerRecordCmd.MarkFlagRequired("namespace")
	getPlayerRecordCmd.Flags().StringP("userId", "u", "", "User ID")
	getPlayerRecordCmd.MarkFlagRequired("userId")
}
