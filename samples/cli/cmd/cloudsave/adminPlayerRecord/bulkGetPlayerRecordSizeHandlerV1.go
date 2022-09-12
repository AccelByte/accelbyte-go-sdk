// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminPlayerRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// BulkGetPlayerRecordSizeHandlerV1Cmd represents the BulkGetPlayerRecordSizeHandlerV1 command
var BulkGetPlayerRecordSizeHandlerV1Cmd = &cobra.Command{
	Use:   "bulkGetPlayerRecordSizeHandlerV1",
	Short: "Bulk get player record size handler V1",
	Long:  `Bulk get player record size handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerRecordService := &cloudsave.AdminPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsBulkUserKeyRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_player_record.BulkGetPlayerRecordSizeHandlerV1Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := adminPlayerRecordService.BulkGetPlayerRecordSizeHandlerV1Short(input)
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
	BulkGetPlayerRecordSizeHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = BulkGetPlayerRecordSizeHandlerV1Cmd.MarkFlagRequired("body")
	BulkGetPlayerRecordSizeHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = BulkGetPlayerRecordSizeHandlerV1Cmd.MarkFlagRequired("namespace")
}
