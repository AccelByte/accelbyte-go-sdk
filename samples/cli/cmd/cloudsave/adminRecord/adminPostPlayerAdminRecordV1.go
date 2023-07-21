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

// AdminPostPlayerAdminRecordV1Cmd represents the AdminPostPlayerAdminRecordV1 command
var AdminPostPlayerAdminRecordV1Cmd = &cobra.Command{
	Use:   "adminPostPlayerAdminRecordV1",
	Short: "Admin post player admin record V1",
	Long:  `Admin post player admin record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminRecordService := &cloudsave.AdminRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsAdminPlayerRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_record.AdminPostPlayerAdminRecordV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := adminRecordService.AdminPostPlayerAdminRecordV1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminPostPlayerAdminRecordV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPostPlayerAdminRecordV1Cmd.MarkFlagRequired("body")
	AdminPostPlayerAdminRecordV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPostPlayerAdminRecordV1Cmd.MarkFlagRequired("key")
	AdminPostPlayerAdminRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPostPlayerAdminRecordV1Cmd.MarkFlagRequired("namespace")
	AdminPostPlayerAdminRecordV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminPostPlayerAdminRecordV1Cmd.MarkFlagRequired("userId")
}
