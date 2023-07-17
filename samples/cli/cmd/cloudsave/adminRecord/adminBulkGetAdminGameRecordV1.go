// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminBulkGetAdminGameRecordV1Cmd represents the AdminBulkGetAdminGameRecordV1 command
var AdminBulkGetAdminGameRecordV1Cmd = &cobra.Command{
	Use:   "adminBulkGetAdminGameRecordV1",
	Short: "Admin bulk get admin game record V1",
	Long:  `Admin bulk get admin game record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminRecordService := &cloudsave.AdminRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsBulkGetAdminGameRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_record.AdminBulkGetAdminGameRecordV1Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := adminRecordService.AdminBulkGetAdminGameRecordV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminBulkGetAdminGameRecordV1Cmd.Flags().String("body", "", "Body")
	_ = AdminBulkGetAdminGameRecordV1Cmd.MarkFlagRequired("body")
	AdminBulkGetAdminGameRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkGetAdminGameRecordV1Cmd.MarkFlagRequired("namespace")
}
