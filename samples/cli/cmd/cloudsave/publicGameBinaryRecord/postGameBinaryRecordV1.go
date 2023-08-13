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

// PostGameBinaryRecordV1Cmd represents the PostGameBinaryRecordV1 command
var PostGameBinaryRecordV1Cmd = &cobra.Command{
	Use:   "postGameBinaryRecordV1",
	Short: "Post game binary record V1",
	Long:  `Post game binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGameBinaryRecordService := &cloudsave.PublicGameBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsPublicGameBinaryRecordCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_game_binary_record.PostGameBinaryRecordV1Params{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := publicGameBinaryRecordService.PostGameBinaryRecordV1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	PostGameBinaryRecordV1Cmd.Flags().String("body", "", "Body")
	_ = PostGameBinaryRecordV1Cmd.MarkFlagRequired("body")
	PostGameBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PostGameBinaryRecordV1Cmd.MarkFlagRequired("namespace")
}
