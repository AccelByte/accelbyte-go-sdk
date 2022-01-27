// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package concurrentRecord

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/concurrent_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PutPlayerPublicRecordConcurrentHandlerV1Cmd represents the PutPlayerPublicRecordConcurrentHandlerV1 command
var PutPlayerPublicRecordConcurrentHandlerV1Cmd = &cobra.Command{
	Use:   "PutPlayerPublicRecordConcurrentHandlerV1",
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
	PutPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = PutPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("body")
	PutPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().StringP("key", "ky", " ", "Key")
	_ = PutPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("key")
	PutPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PutPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("namespace")
	PutPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = PutPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("userId")
}
