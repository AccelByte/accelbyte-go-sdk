// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicGameBinaryRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PostGameBinaryPresignedURLV1Cmd represents the PostGameBinaryPresignedURLV1 command
var PostGameBinaryPresignedURLV1Cmd = &cobra.Command{
	Use:   "postGameBinaryPresignedURLV1",
	Short: "Post game binary presigned URLV1",
	Long:  `Post game binary presigned URLV1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGameBinaryRecordService := &cloudsave.PublicGameBinaryRecordService{
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
		input := &public_game_binary_record.PostGameBinaryPresignedURLV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		created, errCreated := publicGameBinaryRecordService.PostGameBinaryPresignedURLV1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	PostGameBinaryPresignedURLV1Cmd.Flags().String("body", "", "Body")
	_ = PostGameBinaryPresignedURLV1Cmd.MarkFlagRequired("body")
	PostGameBinaryPresignedURLV1Cmd.Flags().String("key", "", "Key")
	_ = PostGameBinaryPresignedURLV1Cmd.MarkFlagRequired("key")
	PostGameBinaryPresignedURLV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PostGameBinaryPresignedURLV1Cmd.MarkFlagRequired("namespace")
}
