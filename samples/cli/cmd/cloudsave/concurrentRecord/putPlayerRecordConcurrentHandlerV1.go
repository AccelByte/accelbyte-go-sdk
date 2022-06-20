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

// PutPlayerRecordConcurrentHandlerV1Cmd represents the PutPlayerRecordConcurrentHandlerV1 command
var PutPlayerRecordConcurrentHandlerV1Cmd = &cobra.Command{
	Use:   "putPlayerRecordConcurrentHandlerV1",
	Short: "Put player record concurrent handler V1",
	Long:  `Put player record concurrent handler V1`,
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
		input := &concurrent_record.PutPlayerRecordConcurrentHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := concurrentRecordService.PutPlayerRecordConcurrentHandlerV1Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PutPlayerRecordConcurrentHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = PutPlayerRecordConcurrentHandlerV1Cmd.MarkFlagRequired("body")
	PutPlayerRecordConcurrentHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = PutPlayerRecordConcurrentHandlerV1Cmd.MarkFlagRequired("key")
	PutPlayerRecordConcurrentHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PutPlayerRecordConcurrentHandlerV1Cmd.MarkFlagRequired("namespace")
	PutPlayerRecordConcurrentHandlerV1Cmd.Flags().String("userId", "", "User id")
	_ = PutPlayerRecordConcurrentHandlerV1Cmd.MarkFlagRequired("userId")
}
