// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// AdminPutPlayerPublicRecordConcurrentHandlerV1Cmd represents the AdminPutPlayerPublicRecordConcurrentHandlerV1 command
var AdminPutPlayerPublicRecordConcurrentHandlerV1Cmd = &cobra.Command{
	Use:   "adminPutPlayerPublicRecordConcurrentHandlerV1",
	Short: "Admin put player public record concurrent handler V1",
	Long:  `Admin put player public record concurrent handler V1`,
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
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_concurrent_record.AdminPutPlayerPublicRecordConcurrentHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := adminConcurrentRecordService.AdminPutPlayerPublicRecordConcurrentHandlerV1Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminPutPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminPutPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("body")
	AdminPutPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().StringP("key", "", "", "Key")
	_ = AdminPutPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("key")
	AdminPutPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminPutPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("namespace")
	AdminPutPlayerPublicRecordConcurrentHandlerV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminPutPlayerPublicRecordConcurrentHandlerV1Cmd.MarkFlagRequired("userId")
}
