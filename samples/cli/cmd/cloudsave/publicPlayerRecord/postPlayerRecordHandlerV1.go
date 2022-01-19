// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// postPlayerRecordHandlerV1Cmd represents the postPlayerRecordHandlerV1 command
var postPlayerRecordHandlerV1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := publicPlayerRecordService.PostPlayerRecordHandlerV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(postPlayerRecordHandlerV1Cmd)
	postPlayerRecordHandlerV1Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = postPlayerRecordHandlerV1Cmd.MarkFlagRequired("body")
	postPlayerRecordHandlerV1Cmd.Flags().StringP("key", "k", " ", "Key")
	_ = postPlayerRecordHandlerV1Cmd.MarkFlagRequired("key")
	postPlayerRecordHandlerV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = postPlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	postPlayerRecordHandlerV1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = postPlayerRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
