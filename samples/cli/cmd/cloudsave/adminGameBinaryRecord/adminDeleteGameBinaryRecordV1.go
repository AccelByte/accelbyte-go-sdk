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

// AdminDeleteGameBinaryRecordV1Cmd represents the AdminDeleteGameBinaryRecordV1 command
var AdminDeleteGameBinaryRecordV1Cmd = &cobra.Command{
	Use:   "adminDeleteGameBinaryRecordV1",
	Short: "Admin delete game binary record V1",
	Long:  `Admin delete game binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGameBinaryRecordService := &cloudsave.AdminGameBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_game_binary_record.AdminDeleteGameBinaryRecordV1Params{
			Key:       key,
			Namespace: namespace,
		}
		errNoContent := adminGameBinaryRecordService.AdminDeleteGameBinaryRecordV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteGameBinaryRecordV1Cmd.Flags().String("key", "", "Key")
	_ = AdminDeleteGameBinaryRecordV1Cmd.MarkFlagRequired("key")
	AdminDeleteGameBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteGameBinaryRecordV1Cmd.MarkFlagRequired("namespace")
}
