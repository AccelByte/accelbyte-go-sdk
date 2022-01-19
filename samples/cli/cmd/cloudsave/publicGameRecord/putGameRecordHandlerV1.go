// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// putGameRecordHandlerV1Cmd represents the putGameRecordHandlerV1 command
var putGameRecordHandlerV1Cmd = &cobra.Command{
	Use:   "putGameRecordHandlerV1",
	Short: "Put game record handler V1",
	Long:  `Put game record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGameRecordService := &cloudsave.PublicGameRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsGameRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_game_record.PutGameRecordHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := publicGameRecordService.PutGameRecordHandlerV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(putGameRecordHandlerV1Cmd)
	putGameRecordHandlerV1Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = putGameRecordHandlerV1Cmd.MarkFlagRequired("body")
	putGameRecordHandlerV1Cmd.Flags().StringP("key", "k", " ", "Key")
	_ = putGameRecordHandlerV1Cmd.MarkFlagRequired("key")
	putGameRecordHandlerV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = putGameRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
