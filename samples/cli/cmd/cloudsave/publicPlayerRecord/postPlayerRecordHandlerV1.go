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

// PostPlayerRecordHandlerV1Cmd represents the PostPlayerRecordHandlerV1 command
var PostPlayerRecordHandlerV1Cmd = &cobra.Command{
	Use:   "postPlayerRecordHandlerV1",
	Short: "Post player record handler V1",
	Long:  `Post player record handler V1`,
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
		input := &public_player_record.PostPlayerRecordHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := publicPlayerRecordService.PostPlayerRecordHandlerV1Short(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PostPlayerRecordHandlerV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = PostPlayerRecordHandlerV1Cmd.MarkFlagRequired("body")
	PostPlayerRecordHandlerV1Cmd.Flags().StringP("key", "", "", "Key")
	_ = PostPlayerRecordHandlerV1Cmd.MarkFlagRequired("key")
	PostPlayerRecordHandlerV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PostPlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	PostPlayerRecordHandlerV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = PostPlayerRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
