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

// GetOtherPlayerPublicRecordHandlerV1Cmd represents the GetOtherPlayerPublicRecordHandlerV1 command
var GetOtherPlayerPublicRecordHandlerV1Cmd = &cobra.Command{
	Use:   "getOtherPlayerPublicRecordHandlerV1",
	Short: "Get other player public record handler V1",
	Long:  `Get other player public record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerRecordService := &cloudsave.PublicPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsBulkGetPlayerRecordsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_player_record.GetOtherPlayerPublicRecordHandlerV1Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicPlayerRecordService.GetOtherPlayerPublicRecordHandlerV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetOtherPlayerPublicRecordHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = GetOtherPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("body")
	GetOtherPlayerPublicRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetOtherPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	GetOtherPlayerPublicRecordHandlerV1Cmd.Flags().String("userId", "", "User id")
	_ = GetOtherPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
