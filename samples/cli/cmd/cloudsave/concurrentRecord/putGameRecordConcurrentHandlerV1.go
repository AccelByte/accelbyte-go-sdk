// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// PutGameRecordConcurrentHandlerV1Cmd represents the PutGameRecordConcurrentHandlerV1 command
var PutGameRecordConcurrentHandlerV1Cmd = &cobra.Command{
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
		errInput := concurrentRecordService.PutGameRecordConcurrentHandlerV1Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PutGameRecordConcurrentHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = PutGameRecordConcurrentHandlerV1Cmd.MarkFlagRequired("body")
	PutGameRecordConcurrentHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = PutGameRecordConcurrentHandlerV1Cmd.MarkFlagRequired("key")
	PutGameRecordConcurrentHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PutGameRecordConcurrentHandlerV1Cmd.MarkFlagRequired("namespace")
}
