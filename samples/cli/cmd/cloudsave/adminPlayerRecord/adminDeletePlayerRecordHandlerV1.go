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

// adminDeletePlayerRecordHandlerV1Cmd represents the adminDeletePlayerRecordHandlerV1 command
var adminDeletePlayerRecordHandlerV1Cmd = &cobra.Command{
	Use:   "adminDeletePlayerRecordHandlerV1",
	Short: "Admin delete player record handler V1",
	Long:  `Admin delete player record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerRecordService := &cloudsave.AdminPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_player_record.AdminDeletePlayerRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := adminPlayerRecordService.AdminDeletePlayerRecordHandlerV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDeletePlayerRecordHandlerV1Cmd)
	adminDeletePlayerRecordHandlerV1Cmd.Flags().StringP("key", "ky", " ", "Key")
	_ = adminDeletePlayerRecordHandlerV1Cmd.MarkFlagRequired("key")
	adminDeletePlayerRecordHandlerV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminDeletePlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	adminDeletePlayerRecordHandlerV1Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminDeletePlayerRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
