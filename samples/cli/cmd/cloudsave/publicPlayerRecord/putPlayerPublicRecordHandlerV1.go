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

// putPlayerPublicRecordHandlerV1Cmd represents the putPlayerPublicRecordHandlerV1 command
var putPlayerPublicRecordHandlerV1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := publicPlayerRecordService.PutPlayerPublicRecordHandlerV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(putPlayerPublicRecordHandlerV1Cmd)
	putPlayerPublicRecordHandlerV1Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = putPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("body")
	putPlayerPublicRecordHandlerV1Cmd.Flags().StringP("key", "k", " ", "Key")
	_ = putPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("key")
	putPlayerPublicRecordHandlerV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = putPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	putPlayerPublicRecordHandlerV1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = putPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
