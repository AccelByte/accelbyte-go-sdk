// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// bulkGetPlayerPublicRecordHandlerV1Cmd represents the bulkGetPlayerPublicRecordHandlerV1 command
var bulkGetPlayerPublicRecordHandlerV1Cmd = &cobra.Command{
	Use:   "bulkGetPlayerPublicRecordHandlerV1",
	Short: "Bulk get player public record handler V1",
	Long:  `Bulk get player public record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerRecordService := &cloudsave.PublicPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsBulkUserIDsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_player_record.BulkGetPlayerPublicRecordHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicPlayerRecordService.BulkGetPlayerPublicRecordHandlerV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(bulkGetPlayerPublicRecordHandlerV1Cmd)
	bulkGetPlayerPublicRecordHandlerV1Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = bulkGetPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("body")
	bulkGetPlayerPublicRecordHandlerV1Cmd.Flags().StringP("key", "k", " ", "Key")
	_ = bulkGetPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("key")
	bulkGetPlayerPublicRecordHandlerV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = bulkGetPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}