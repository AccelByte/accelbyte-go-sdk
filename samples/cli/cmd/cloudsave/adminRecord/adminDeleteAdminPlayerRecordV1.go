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

// AdminDeleteAdminPlayerRecordV1Cmd represents the AdminDeleteAdminPlayerRecordV1 command
var AdminDeleteAdminPlayerRecordV1Cmd = &cobra.Command{
	Use:   "adminDeleteAdminPlayerRecordV1",
	Short: "Admin delete admin player record V1",
	Long:  `Admin delete admin player record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminRecordService := &cloudsave.AdminRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_record.AdminDeleteAdminPlayerRecordV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := adminRecordService.AdminDeleteAdminPlayerRecordV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteAdminPlayerRecordV1Cmd.Flags().String("key", "", "Key")
	_ = AdminDeleteAdminPlayerRecordV1Cmd.MarkFlagRequired("key")
	AdminDeleteAdminPlayerRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteAdminPlayerRecordV1Cmd.MarkFlagRequired("namespace")
	AdminDeleteAdminPlayerRecordV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminDeleteAdminPlayerRecordV1Cmd.MarkFlagRequired("userId")
}
