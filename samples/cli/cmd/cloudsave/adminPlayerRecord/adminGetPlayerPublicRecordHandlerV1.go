// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminPlayerRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetPlayerPublicRecordHandlerV1Cmd represents the AdminGetPlayerPublicRecordHandlerV1 command
var AdminGetPlayerPublicRecordHandlerV1Cmd = &cobra.Command{
	Use:   "adminGetPlayerPublicRecordHandlerV1",
	Short: "Admin get player public record handler V1",
	Long:  `Admin get player public record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerRecordService := &cloudsave.AdminPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_player_record.AdminGetPlayerPublicRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminPlayerRecordService.AdminGetPlayerPublicRecordHandlerV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminGetPlayerPublicRecordHandlerV1Cmd.Flags().StringP("key", "", "", "Key")
	_ = AdminGetPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("key")
	AdminGetPlayerPublicRecordHandlerV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	AdminGetPlayerPublicRecordHandlerV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminGetPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
