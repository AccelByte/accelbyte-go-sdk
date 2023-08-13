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

// AdminDeletePlayerBinaryRecordV1Cmd represents the AdminDeletePlayerBinaryRecordV1 command
var AdminDeletePlayerBinaryRecordV1Cmd = &cobra.Command{
	Use:   "adminDeletePlayerBinaryRecordV1",
	Short: "Admin delete player binary record V1",
	Long:  `Admin delete player binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerBinaryRecordService := &cloudsave.AdminPlayerBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_player_binary_record.AdminDeletePlayerBinaryRecordV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := adminPlayerBinaryRecordService.AdminDeletePlayerBinaryRecordV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeletePlayerBinaryRecordV1Cmd.Flags().String("key", "", "Key")
	_ = AdminDeletePlayerBinaryRecordV1Cmd.MarkFlagRequired("key")
	AdminDeletePlayerBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeletePlayerBinaryRecordV1Cmd.MarkFlagRequired("namespace")
	AdminDeletePlayerBinaryRecordV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminDeletePlayerBinaryRecordV1Cmd.MarkFlagRequired("userId")
}
