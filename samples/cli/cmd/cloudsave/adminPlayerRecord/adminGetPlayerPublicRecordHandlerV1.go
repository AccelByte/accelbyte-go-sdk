// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetPlayerPublicRecordHandlerV1Cmd represents the adminGetPlayerPublicRecordHandlerV1 command
var adminGetPlayerPublicRecordHandlerV1Cmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(adminGetPlayerPublicRecordHandlerV1Cmd)
	adminGetPlayerPublicRecordHandlerV1Cmd.Flags().StringP("key", "k", " ", "Key")
	_ = adminGetPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("key")
	adminGetPlayerPublicRecordHandlerV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	adminGetPlayerPublicRecordHandlerV1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminGetPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
