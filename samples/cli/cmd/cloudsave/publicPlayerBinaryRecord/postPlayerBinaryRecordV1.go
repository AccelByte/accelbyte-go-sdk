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

// PostPlayerBinaryRecordV1Cmd represents the PostPlayerBinaryRecordV1 command
var PostPlayerBinaryRecordV1Cmd = &cobra.Command{
	Use:   "postPlayerBinaryRecordV1",
	Short: "Post player binary record V1",
	Long:  `Post player binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerBinaryRecordService := &cloudsave.PublicPlayerBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsPublicPlayerBinaryRecordCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_player_binary_record.PostPlayerBinaryRecordV1Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := publicPlayerBinaryRecordService.PostPlayerBinaryRecordV1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	PostPlayerBinaryRecordV1Cmd.Flags().String("body", "", "Body")
	_ = PostPlayerBinaryRecordV1Cmd.MarkFlagRequired("body")
	PostPlayerBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PostPlayerBinaryRecordV1Cmd.MarkFlagRequired("namespace")
	PostPlayerBinaryRecordV1Cmd.Flags().String("userId", "", "User id")
	_ = PostPlayerBinaryRecordV1Cmd.MarkFlagRequired("userId")
}
