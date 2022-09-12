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

// AdminGetPlayerRecordSizeHandlerV1Cmd represents the AdminGetPlayerRecordSizeHandlerV1 command
var AdminGetPlayerRecordSizeHandlerV1Cmd = &cobra.Command{
	Use:   "adminGetPlayerRecordSizeHandlerV1",
	Short: "Admin get player record size handler V1",
	Long:  `Admin get player record size handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerRecordService := &cloudsave.AdminPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_player_record.AdminGetPlayerRecordSizeHandlerV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := adminPlayerRecordService.AdminGetPlayerRecordSizeHandlerV1Short(input)
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
	AdminGetPlayerRecordSizeHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = AdminGetPlayerRecordSizeHandlerV1Cmd.MarkFlagRequired("key")
	AdminGetPlayerRecordSizeHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPlayerRecordSizeHandlerV1Cmd.MarkFlagRequired("namespace")
	AdminGetPlayerRecordSizeHandlerV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetPlayerRecordSizeHandlerV1Cmd.MarkFlagRequired("userId")
}
