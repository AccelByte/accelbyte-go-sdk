// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicPlayerRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PutPlayerPublicRecordHandlerV1Cmd represents the PutPlayerPublicRecordHandlerV1 command
var PutPlayerPublicRecordHandlerV1Cmd = &cobra.Command{
	Use:   "putPlayerPublicRecordHandlerV1",
	Short: "Put player public record handler V1",
	Long:  `Put player public record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerRecordService := &cloudsave.PublicPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsPlayerRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_player_record.PutPlayerPublicRecordHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := publicPlayerRecordService.PutPlayerPublicRecordHandlerV1Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PutPlayerPublicRecordHandlerV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = PutPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("body")
	PutPlayerPublicRecordHandlerV1Cmd.Flags().StringP("key", "", "", "Key")
	_ = PutPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("key")
	PutPlayerPublicRecordHandlerV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PutPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	PutPlayerPublicRecordHandlerV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = PutPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
