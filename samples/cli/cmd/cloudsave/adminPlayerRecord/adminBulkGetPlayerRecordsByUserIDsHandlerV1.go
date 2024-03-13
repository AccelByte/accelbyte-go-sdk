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

// AdminBulkGetPlayerRecordsByUserIDsHandlerV1Cmd represents the AdminBulkGetPlayerRecordsByUserIDsHandlerV1 command
var AdminBulkGetPlayerRecordsByUserIDsHandlerV1Cmd = &cobra.Command{
	Use:   "adminBulkGetPlayerRecordsByUserIDsHandlerV1",
	Short: "Admin bulk get player records by user I ds handler V1",
	Long:  `Admin bulk get player records by user I ds handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerRecordService := &cloudsave.AdminPlayerRecordService{
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
		input := &admin_player_record.AdminBulkGetPlayerRecordsByUserIDsHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		ok, errOK := adminPlayerRecordService.AdminBulkGetPlayerRecordsByUserIDsHandlerV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminBulkGetPlayerRecordsByUserIDsHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = AdminBulkGetPlayerRecordsByUserIDsHandlerV1Cmd.MarkFlagRequired("body")
	AdminBulkGetPlayerRecordsByUserIDsHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = AdminBulkGetPlayerRecordsByUserIDsHandlerV1Cmd.MarkFlagRequired("key")
	AdminBulkGetPlayerRecordsByUserIDsHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkGetPlayerRecordsByUserIDsHandlerV1Cmd.MarkFlagRequired("namespace")
}
