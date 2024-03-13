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

// AdminBulkPutPlayerRecordsByKeyHandlerV1Cmd represents the AdminBulkPutPlayerRecordsByKeyHandlerV1 command
var AdminBulkPutPlayerRecordsByKeyHandlerV1Cmd = &cobra.Command{
	Use:   "adminBulkPutPlayerRecordsByKeyHandlerV1",
	Short: "Admin bulk put player records by key handler V1",
	Long:  `Admin bulk put player records by key handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerRecordService := &cloudsave.AdminPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsBulkUpdatePlayerRecordsByKeyRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_player_record.AdminBulkPutPlayerRecordsByKeyHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		ok, errOK := adminPlayerRecordService.AdminBulkPutPlayerRecordsByKeyHandlerV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminBulkPutPlayerRecordsByKeyHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = AdminBulkPutPlayerRecordsByKeyHandlerV1Cmd.MarkFlagRequired("body")
	AdminBulkPutPlayerRecordsByKeyHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = AdminBulkPutPlayerRecordsByKeyHandlerV1Cmd.MarkFlagRequired("key")
	AdminBulkPutPlayerRecordsByKeyHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkPutPlayerRecordsByKeyHandlerV1Cmd.MarkFlagRequired("namespace")
}
