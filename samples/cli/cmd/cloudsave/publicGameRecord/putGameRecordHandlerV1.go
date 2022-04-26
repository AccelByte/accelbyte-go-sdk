// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicGameRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PutGameRecordHandlerV1Cmd represents the PutGameRecordHandlerV1 command
var PutGameRecordHandlerV1Cmd = &cobra.Command{
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
		errInput := publicGameRecordService.PutGameRecordHandlerV1Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PutGameRecordHandlerV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = PutGameRecordHandlerV1Cmd.MarkFlagRequired("body")
	PutGameRecordHandlerV1Cmd.Flags().StringP("key", "", "", "Key")
	_ = PutGameRecordHandlerV1Cmd.MarkFlagRequired("key")
	PutGameRecordHandlerV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PutGameRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
