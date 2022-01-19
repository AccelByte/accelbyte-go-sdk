// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/concurrent_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// putGameRecordConcurrentHandlerV1Cmd represents the putGameRecordConcurrentHandlerV1 command
var putGameRecordConcurrentHandlerV1Cmd = &cobra.Command{
	Use:   "putGameRecordConcurrentHandlerV1",
	Short: "Put game record concurrent handler V1",
	Long:  `Put game record concurrent handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		concurrentRecordService := &cloudsave.ConcurrentRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsConcurrentRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &concurrent_record.PutGameRecordConcurrentHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := concurrentRecordService.PutGameRecordConcurrentHandlerV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(putGameRecordConcurrentHandlerV1Cmd)
	putGameRecordConcurrentHandlerV1Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = putGameRecordConcurrentHandlerV1Cmd.MarkFlagRequired("body")
	putGameRecordConcurrentHandlerV1Cmd.Flags().StringP("key", "k", " ", "Key")
	_ = putGameRecordConcurrentHandlerV1Cmd.MarkFlagRequired("key")
	putGameRecordConcurrentHandlerV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = putGameRecordConcurrentHandlerV1Cmd.MarkFlagRequired("namespace")
}
