// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminConcurrentRecord

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_concurrent_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminPutAdminGameRecordConcurrentHandlerV1Cmd represents the AdminPutAdminGameRecordConcurrentHandlerV1 command
var AdminPutAdminGameRecordConcurrentHandlerV1Cmd = &cobra.Command{
	Use:   "adminPutAdminGameRecordConcurrentHandlerV1",
	Short: "Admin put admin game record concurrent handler V1",
	Long:  `Admin put admin game record concurrent handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminConcurrentRecordService := &cloudsave.AdminConcurrentRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsAdminGameConcurrentRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_concurrent_record.AdminPutAdminGameRecordConcurrentHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		errNoContent := adminConcurrentRecordService.AdminPutAdminGameRecordConcurrentHandlerV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminPutAdminGameRecordConcurrentHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPutAdminGameRecordConcurrentHandlerV1Cmd.MarkFlagRequired("body")
	AdminPutAdminGameRecordConcurrentHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPutAdminGameRecordConcurrentHandlerV1Cmd.MarkFlagRequired("key")
	AdminPutAdminGameRecordConcurrentHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPutAdminGameRecordConcurrentHandlerV1Cmd.MarkFlagRequired("namespace")
}
