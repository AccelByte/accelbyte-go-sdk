// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminPlayerRecord

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetPlayerRecordHandlerV1Cmd represents the AdminGetPlayerRecordHandlerV1 command
var AdminGetPlayerRecordHandlerV1Cmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	AdminGetPlayerRecordHandlerV1Cmd.Flags().StringP("key", "", "", "Key")
	_ = AdminGetPlayerRecordHandlerV1Cmd.MarkFlagRequired("key")
	AdminGetPlayerRecordHandlerV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetPlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	AdminGetPlayerRecordHandlerV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminGetPlayerRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
