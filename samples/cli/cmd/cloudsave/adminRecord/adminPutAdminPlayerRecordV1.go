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

// AdminPutAdminPlayerRecordV1Cmd represents the AdminPutAdminPlayerRecordV1 command
var AdminPutAdminPlayerRecordV1Cmd = &cobra.Command{
	Use:   "adminPutAdminPlayerRecordV1",
	Short: "Admin put admin player record V1",
	Long:  `Admin put admin player record V1`,
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
		input := &admin_record.AdminPutAdminPlayerRecordV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminRecordService.AdminPutAdminPlayerRecordV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminPutAdminPlayerRecordV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPutAdminPlayerRecordV1Cmd.MarkFlagRequired("body")
	AdminPutAdminPlayerRecordV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPutAdminPlayerRecordV1Cmd.MarkFlagRequired("key")
	AdminPutAdminPlayerRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPutAdminPlayerRecordV1Cmd.MarkFlagRequired("namespace")
	AdminPutAdminPlayerRecordV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminPutAdminPlayerRecordV1Cmd.MarkFlagRequired("userId")
}
