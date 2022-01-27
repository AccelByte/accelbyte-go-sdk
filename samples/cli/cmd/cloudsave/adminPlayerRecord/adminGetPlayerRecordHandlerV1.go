// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminPlayerRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetPlayerRecordHandlerV1Cmd represents the adminGetPlayerRecordHandlerV1 command
var adminGetPlayerRecordHandlerV1Cmd = &cobra.Command{
	Use:   "adminGetPlayerRecordHandlerV1",
	Short: "Admin get player record handler V1",
	Long:  `Admin get player record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerRecordService := &cloudsave.AdminPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_player_record.AdminGetPlayerRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminPlayerRecordService.AdminGetPlayerRecordHandlerV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetPlayerRecordHandlerV1Cmd)
	adminGetPlayerRecordHandlerV1Cmd.Flags().StringP("key", "ky", " ", "Key")
	_ = adminGetPlayerRecordHandlerV1Cmd.MarkFlagRequired("key")
	adminGetPlayerRecordHandlerV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminGetPlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	adminGetPlayerRecordHandlerV1Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminGetPlayerRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
