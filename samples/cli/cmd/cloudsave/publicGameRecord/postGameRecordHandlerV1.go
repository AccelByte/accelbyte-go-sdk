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

// PostGameRecordHandlerV1Cmd represents the PostGameRecordHandlerV1 command
var PostGameRecordHandlerV1Cmd = &cobra.Command{
	Use:   "postGameRecordHandlerV1",
	Short: "Post game record handler V1",
	Long:  `Post game record handler V1`,
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
		input := &public_game_record.PostGameRecordHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		ok, err := publicGameRecordService.PostGameRecordHandlerV1Short(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	PostGameRecordHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = PostGameRecordHandlerV1Cmd.MarkFlagRequired("body")
	PostGameRecordHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = PostGameRecordHandlerV1Cmd.MarkFlagRequired("key")
	PostGameRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PostGameRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
