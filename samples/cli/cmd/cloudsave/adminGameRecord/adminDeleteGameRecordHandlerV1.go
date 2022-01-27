// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminGameRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteGameRecordHandlerV1Cmd represents the AdminDeleteGameRecordHandlerV1 command
var AdminDeleteGameRecordHandlerV1Cmd = &cobra.Command{
	Use:   "AdminDeleteGameRecordHandlerV1",
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
	AdminDeleteGameRecordHandlerV1Cmd.Flags().StringP("key", "ky", " ", "Key")
	_ = AdminDeleteGameRecordHandlerV1Cmd.MarkFlagRequired("key")
	AdminDeleteGameRecordHandlerV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminDeleteGameRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
