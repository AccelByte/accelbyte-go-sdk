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

// AdminPutAdminPlayerRecordConcurrentHandlerV1Cmd represents the AdminPutAdminPlayerRecordConcurrentHandlerV1 command
var AdminPutAdminPlayerRecordConcurrentHandlerV1Cmd = &cobra.Command{
	Use:   "adminPutAdminPlayerRecordConcurrentHandlerV1",
	Short: "Admin put admin player record concurrent handler V1",
	Long:  `Admin put admin player record concurrent handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminConcurrentRecordService := &cloudsave.AdminConcurrentRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsAdminPlayerConcurrentRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_concurrent_record.AdminPutAdminPlayerRecordConcurrentHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := adminConcurrentRecordService.AdminPutAdminPlayerRecordConcurrentHandlerV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminPutAdminPlayerRecordConcurrentHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPutAdminPlayerRecordConcurrentHandlerV1Cmd.MarkFlagRequired("body")
	AdminPutAdminPlayerRecordConcurrentHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPutAdminPlayerRecordConcurrentHandlerV1Cmd.MarkFlagRequired("key")
	AdminPutAdminPlayerRecordConcurrentHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPutAdminPlayerRecordConcurrentHandlerV1Cmd.MarkFlagRequired("namespace")
	AdminPutAdminPlayerRecordConcurrentHandlerV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminPutAdminPlayerRecordConcurrentHandlerV1Cmd.MarkFlagRequired("userId")
}
