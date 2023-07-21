// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetAdminPlayerRecordV1Cmd represents the AdminGetAdminPlayerRecordV1 command
var AdminGetAdminPlayerRecordV1Cmd = &cobra.Command{
	Use:   "adminGetAdminPlayerRecordV1",
	Short: "Admin get admin player record V1",
	Long:  `Admin get admin player record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminRecordService := &cloudsave.AdminRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_record.AdminGetAdminPlayerRecordV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminRecordService.AdminGetAdminPlayerRecordV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetAdminPlayerRecordV1Cmd.Flags().String("key", "", "Key")
	_ = AdminGetAdminPlayerRecordV1Cmd.MarkFlagRequired("key")
	AdminGetAdminPlayerRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetAdminPlayerRecordV1Cmd.MarkFlagRequired("namespace")
	AdminGetAdminPlayerRecordV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetAdminPlayerRecordV1Cmd.MarkFlagRequired("userId")
}
