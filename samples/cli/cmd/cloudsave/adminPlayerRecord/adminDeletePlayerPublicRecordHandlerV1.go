// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminPlayerRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeletePlayerPublicRecordHandlerV1Cmd represents the AdminDeletePlayerPublicRecordHandlerV1 command
var AdminDeletePlayerPublicRecordHandlerV1Cmd = &cobra.Command{
	Use:   "adminDeletePlayerPublicRecordHandlerV1",
	Short: "Admin delete player public record handler V1",
	Long:  `Admin delete player public record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerRecordService := &cloudsave.AdminPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_player_record.AdminDeletePlayerPublicRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := adminPlayerRecordService.AdminDeletePlayerPublicRecordHandlerV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeletePlayerPublicRecordHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = AdminDeletePlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("key")
	AdminDeletePlayerPublicRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeletePlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	AdminDeletePlayerPublicRecordHandlerV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminDeletePlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
