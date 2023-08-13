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

// BulkGetPlayerPublicBinaryRecordsV1Cmd represents the BulkGetPlayerPublicBinaryRecordsV1 command
var BulkGetPlayerPublicBinaryRecordsV1Cmd = &cobra.Command{
	Use:   "bulkGetPlayerPublicBinaryRecordsV1",
	Short: "Bulk get player public binary records V1",
	Long:  `Bulk get player public binary records V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerBinaryRecordService := &cloudsave.PublicPlayerBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsBulkUserIDsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_player_binary_record.BulkGetPlayerPublicBinaryRecordsV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		ok, errOK := publicPlayerBinaryRecordService.BulkGetPlayerPublicBinaryRecordsV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkGetPlayerPublicBinaryRecordsV1Cmd.Flags().String("body", "", "Body")
	_ = BulkGetPlayerPublicBinaryRecordsV1Cmd.MarkFlagRequired("body")
	BulkGetPlayerPublicBinaryRecordsV1Cmd.Flags().String("key", "", "Key")
	_ = BulkGetPlayerPublicBinaryRecordsV1Cmd.MarkFlagRequired("key")
	BulkGetPlayerPublicBinaryRecordsV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = BulkGetPlayerPublicBinaryRecordsV1Cmd.MarkFlagRequired("namespace")
}
