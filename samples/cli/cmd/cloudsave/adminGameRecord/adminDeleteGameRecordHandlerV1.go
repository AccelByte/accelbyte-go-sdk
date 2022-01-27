// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminGameRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminDeleteGameRecordHandlerV1Cmd represents the adminDeleteGameRecordHandlerV1 command
var adminDeleteGameRecordHandlerV1Cmd = &cobra.Command{
	Use:   "adminDeleteGameRecordHandlerV1",
	Short: "Admin delete game record handler V1",
	Long:  `Admin delete game record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGameRecordService := &cloudsave.AdminGameRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_game_record.AdminDeleteGameRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := adminGameRecordService.AdminDeleteGameRecordHandlerV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDeleteGameRecordHandlerV1Cmd)
	adminDeleteGameRecordHandlerV1Cmd.Flags().StringP("key", "ky", " ", "Key")
	_ = adminDeleteGameRecordHandlerV1Cmd.MarkFlagRequired("key")
	adminDeleteGameRecordHandlerV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminDeleteGameRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
