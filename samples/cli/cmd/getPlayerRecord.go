// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
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
		cloudSaveService := &cloudsave.PublicPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &public_player_record.GetPlayerPublicRecordHandlerV1Params{
			UserID:    userId,
			Namespace: namespace,
			Key:       key,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		playerRecords, err := cloudSaveService.GetPlayerPublicRecordHandlerV1(input)
		if err != nil {
			return err
		}
		response, err := json.Marshal(playerRecords)
		if err != nil {
			return err
		}
		logrus.Infof("Response: %s", response)
		return nil
	},
}

func init() {
	RootCmd.AddCommand(getPlayerRecordCmd)
	getPlayerRecordCmd.Flags().StringP("key", "k", "", "Player record key")
	_ = getPlayerRecordCmd.MarkFlagRequired("key")
	getPlayerRecordCmd.Flags().StringP("namespace", "n", "", "Player namespace")
	_ = getPlayerRecordCmd.MarkFlagRequired("namespace")
	getPlayerRecordCmd.Flags().StringP("userId", "u", "", "User ID")
	_ = getPlayerRecordCmd.MarkFlagRequired("userId")
}
