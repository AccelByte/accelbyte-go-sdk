// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminGameRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetGameRecordHandlerV1Cmd represents the AdminGetGameRecordHandlerV1 command
var AdminGetGameRecordHandlerV1Cmd = &cobra.Command{
	Use:   "adminGetGameRecordHandlerV1",
	Short: "Admin get game record handler V1",
	Long:  `Admin get game record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGameRecordService := &cloudsave.AdminGameRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_game_record.AdminGetGameRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
		}
		ok, err := adminGameRecordService.AdminGetGameRecordHandlerV1Short(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	AdminGetGameRecordHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = AdminGetGameRecordHandlerV1Cmd.MarkFlagRequired("key")
	AdminGetGameRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetGameRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
