// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminGameBinaryRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetGameBinaryRecordV1Cmd represents the AdminGetGameBinaryRecordV1 command
var AdminGetGameBinaryRecordV1Cmd = &cobra.Command{
	Use:   "adminGetGameBinaryRecordV1",
	Short: "Admin get game binary record V1",
	Long:  `Admin get game binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGameBinaryRecordService := &cloudsave.AdminGameBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_game_binary_record.AdminGetGameBinaryRecordV1Params{
			Key:       key,
			Namespace: namespace,
		}
		ok, errOK := adminGameBinaryRecordService.AdminGetGameBinaryRecordV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetGameBinaryRecordV1Cmd.Flags().String("key", "", "Key")
	_ = AdminGetGameBinaryRecordV1Cmd.MarkFlagRequired("key")
	AdminGetGameBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetGameBinaryRecordV1Cmd.MarkFlagRequired("namespace")
}
