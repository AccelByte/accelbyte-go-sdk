// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicPlayerBinaryRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PostPlayerBinaryPresignedURLV1Cmd represents the PostPlayerBinaryPresignedURLV1 command
var PostPlayerBinaryPresignedURLV1Cmd = &cobra.Command{
	Use:   "postPlayerBinaryPresignedURLV1",
	Short: "Post player binary presigned URLV1",
	Long:  `Post player binary presigned URLV1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerBinaryRecordService := &cloudsave.PublicPlayerBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsUploadBinaryRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_player_binary_record.PostPlayerBinaryPresignedURLV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := publicPlayerBinaryRecordService.PostPlayerBinaryPresignedURLV1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	PostPlayerBinaryPresignedURLV1Cmd.Flags().String("body", "", "Body")
	_ = PostPlayerBinaryPresignedURLV1Cmd.MarkFlagRequired("body")
	PostPlayerBinaryPresignedURLV1Cmd.Flags().String("key", "", "Key")
	_ = PostPlayerBinaryPresignedURLV1Cmd.MarkFlagRequired("key")
	PostPlayerBinaryPresignedURLV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PostPlayerBinaryPresignedURLV1Cmd.MarkFlagRequired("namespace")
	PostPlayerBinaryPresignedURLV1Cmd.Flags().String("userId", "", "User id")
	_ = PostPlayerBinaryPresignedURLV1Cmd.MarkFlagRequired("userId")
}
