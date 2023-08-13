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

// BulkGetOtherPlayerPublicBinaryRecordsV1Cmd represents the BulkGetOtherPlayerPublicBinaryRecordsV1 command
var BulkGetOtherPlayerPublicBinaryRecordsV1Cmd = &cobra.Command{
	Use:   "bulkGetOtherPlayerPublicBinaryRecordsV1",
	Short: "Bulk get other player public binary records V1",
	Long:  `Bulk get other player public binary records V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerBinaryRecordService := &cloudsave.PublicPlayerBinaryRecordService{
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
		input := &public_player_binary_record.BulkGetOtherPlayerPublicBinaryRecordsV1Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicPlayerBinaryRecordService.BulkGetOtherPlayerPublicBinaryRecordsV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkGetOtherPlayerPublicBinaryRecordsV1Cmd.Flags().String("body", "", "Body")
	_ = BulkGetOtherPlayerPublicBinaryRecordsV1Cmd.MarkFlagRequired("body")
	BulkGetOtherPlayerPublicBinaryRecordsV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = BulkGetOtherPlayerPublicBinaryRecordsV1Cmd.MarkFlagRequired("namespace")
	BulkGetOtherPlayerPublicBinaryRecordsV1Cmd.Flags().String("userId", "", "User id")
	_ = BulkGetOtherPlayerPublicBinaryRecordsV1Cmd.MarkFlagRequired("userId")
}
