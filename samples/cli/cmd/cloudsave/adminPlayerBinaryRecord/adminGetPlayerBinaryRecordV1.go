// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminPlayerBinaryRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetPlayerBinaryRecordV1Cmd represents the AdminGetPlayerBinaryRecordV1 command
var AdminGetPlayerBinaryRecordV1Cmd = &cobra.Command{
	Use:   "adminGetPlayerBinaryRecordV1",
	Short: "Admin get player binary record V1",
	Long:  `Admin get player binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerBinaryRecordService := &cloudsave.AdminPlayerBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_player_binary_record.AdminGetPlayerBinaryRecordV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminPlayerBinaryRecordService.AdminGetPlayerBinaryRecordV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetPlayerBinaryRecordV1Cmd.Flags().String("key", "", "Key")
	_ = AdminGetPlayerBinaryRecordV1Cmd.MarkFlagRequired("key")
	AdminGetPlayerBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPlayerBinaryRecordV1Cmd.MarkFlagRequired("namespace")
	AdminGetPlayerBinaryRecordV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetPlayerBinaryRecordV1Cmd.MarkFlagRequired("userId")
}
