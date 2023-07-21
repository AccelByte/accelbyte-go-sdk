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

// AdminPutAdminGameRecordV1Cmd represents the AdminPutAdminGameRecordV1 command
var AdminPutAdminGameRecordV1Cmd = &cobra.Command{
	Use:   "adminPutAdminGameRecordV1",
	Short: "Admin put admin game record V1",
	Long:  `Admin put admin game record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminRecordService := &cloudsave.AdminRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsAdminGameRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_record.AdminPutAdminGameRecordV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		ok, errOK := adminRecordService.AdminPutAdminGameRecordV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminPutAdminGameRecordV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPutAdminGameRecordV1Cmd.MarkFlagRequired("body")
	AdminPutAdminGameRecordV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPutAdminGameRecordV1Cmd.MarkFlagRequired("key")
	AdminPutAdminGameRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPutAdminGameRecordV1Cmd.MarkFlagRequired("namespace")
}
