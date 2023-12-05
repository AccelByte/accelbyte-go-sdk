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

// PutPlayerPublicRecordConcurrentHandlerV1Cmd represents the PutPlayerPublicRecordConcurrentHandlerV1 command
var PutPlayerPublicRecordConcurrentHandlerV1Cmd = &cobra.Command{
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
		responseBody, _ := cmd.Flags().GetBool("responseBody")
		input := &concurrent_record.PutPlayerPublicRecordConcurrentHandlerV1Params{
			Body:         body,
			Key:          key,
			Namespace:    namespace,
			UserID:       userId,
			ResponseBody: &responseBody,
		}
		ok, errOK := concurrentRecordService.PutPlayerPublicRecordConcurrentHandlerV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PutPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = PutPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("body")
	PutPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = PutPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("key")
	PutPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PutPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("namespace")
	PutPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().String("userId", "", "User id")
	_ = PutPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("userId")
	PutPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().Bool("responseBody", false, "Response body")
}
