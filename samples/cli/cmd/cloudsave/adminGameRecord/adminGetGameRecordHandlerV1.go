// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetGameRecordHandlerV1Cmd represents the adminGetGameRecordHandlerV1 command
var adminGetGameRecordHandlerV1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminGameRecordService.AdminGetGameRecordHandlerV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetGameRecordHandlerV1Cmd)
	adminGetGameRecordHandlerV1Cmd.Flags().StringP("key", "k", " ", "Key")
	_ = adminGetGameRecordHandlerV1Cmd.MarkFlagRequired("key")
	adminGetGameRecordHandlerV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetGameRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
