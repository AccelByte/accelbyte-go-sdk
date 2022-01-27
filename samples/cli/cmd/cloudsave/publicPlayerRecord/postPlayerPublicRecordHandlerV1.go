// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// PostPlayerPublicRecordHandlerV1Cmd represents the PostPlayerPublicRecordHandlerV1 command
var PostPlayerPublicRecordHandlerV1Cmd = &cobra.Command{
	Use:   "PostPlayerPublicRecordHandlerV1",
	Short: "Post player public record handler V1",
	Long:  `Post player public record handler V1`,
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
		input := &public_player_record.PostPlayerPublicRecordHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := publicPlayerRecordService.PostPlayerPublicRecordHandlerV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	PostPlayerPublicRecordHandlerV1Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = PostPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("body")
	PostPlayerPublicRecordHandlerV1Cmd.Flags().StringP("key", "ky", " ", "Key")
	_ = PostPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("key")
	PostPlayerPublicRecordHandlerV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PostPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	PostPlayerPublicRecordHandlerV1Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = PostPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
