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

// putPlayerPublicRecordConcurrentHandlerV1Cmd represents the putPlayerPublicRecordConcurrentHandlerV1 command
var putPlayerPublicRecordConcurrentHandlerV1Cmd = &cobra.Command{
	Use:   "putPlayerPublicRecordConcurrentHandlerV1",
	Short: "Put player public record concurrent handler V1",
	Long:  `Put player public record concurrent handler V1`,
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
		userId, _ := cmd.Flags().GetString("userId")
		input := &concurrent_record.PutPlayerPublicRecordConcurrentHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := concurrentRecordService.PutPlayerPublicRecordConcurrentHandlerV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(putPlayerPublicRecordConcurrentHandlerV1Cmd)
	putPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = putPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("body")
	putPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().StringP("key", "k", " ", "Key")
	_ = putPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("key")
	putPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = putPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("namespace")
	putPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = putPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("userId")
}