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

// AdminPutGameRecordConcurrentHandlerV1Cmd represents the AdminPutGameRecordConcurrentHandlerV1 command
var AdminPutGameRecordConcurrentHandlerV1Cmd = &cobra.Command{
	Use:   "adminPutGameRecordConcurrentHandlerV1",
	Short: "Admin put game record concurrent handler V1",
	Long:  `Admin put game record concurrent handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminConcurrentRecordService := &cloudsave.AdminConcurrentRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsAdminConcurrentRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_concurrent_record.AdminPutGameRecordConcurrentHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		errInput := adminConcurrentRecordService.AdminPutGameRecordConcurrentHandlerV1Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminPutGameRecordConcurrentHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPutGameRecordConcurrentHandlerV1Cmd.MarkFlagRequired("body")
	AdminPutGameRecordConcurrentHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPutGameRecordConcurrentHandlerV1Cmd.MarkFlagRequired("key")
	AdminPutGameRecordConcurrentHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPutGameRecordConcurrentHandlerV1Cmd.MarkFlagRequired("namespace")
}
