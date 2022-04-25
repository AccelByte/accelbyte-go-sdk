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

// AdminDeletePlayerRecordHandlerV1Cmd represents the AdminDeletePlayerRecordHandlerV1 command
var AdminDeletePlayerRecordHandlerV1Cmd = &cobra.Command{
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
		errInput := adminPlayerRecordService.AdminDeletePlayerRecordHandlerV1Short(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeletePlayerRecordHandlerV1Cmd.Flags().StringP("key", "", "", "Key")
	_ = AdminDeletePlayerRecordHandlerV1Cmd.MarkFlagRequired("key")
	AdminDeletePlayerRecordHandlerV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDeletePlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	AdminDeletePlayerRecordHandlerV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminDeletePlayerRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
