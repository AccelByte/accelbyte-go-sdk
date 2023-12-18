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

// AdminPutPlayerRecordsHandlerV1Cmd represents the AdminPutPlayerRecordsHandlerV1 command
var AdminPutPlayerRecordsHandlerV1Cmd = &cobra.Command{
	Use:   "adminPutPlayerRecordsHandlerV1",
	Short: "Admin put player records handler V1",
	Long:  `Admin put player records handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerRecordService := &cloudsave.AdminPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsBulkUpdatePlayerRecordsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_player_record.AdminPutPlayerRecordsHandlerV1Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminPlayerRecordService.AdminPutPlayerRecordsHandlerV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminPutPlayerRecordsHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPutPlayerRecordsHandlerV1Cmd.MarkFlagRequired("body")
	AdminPutPlayerRecordsHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPutPlayerRecordsHandlerV1Cmd.MarkFlagRequired("namespace")
	AdminPutPlayerRecordsHandlerV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminPutPlayerRecordsHandlerV1Cmd.MarkFlagRequired("userId")
}
