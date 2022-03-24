// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicPlayerRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPlayerRecordHandlerV1Cmd represents the GetPlayerRecordHandlerV1 command
var GetPlayerRecordHandlerV1Cmd = &cobra.Command{
	Use:   "getPlayerRecordHandlerV1",
	Short: "Get player record handler V1",
	Long:  `Get player record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerRecordService := &cloudsave.PublicPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_player_record.GetPlayerRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := publicPlayerRecordService.GetPlayerRecordHandlerV1Short(input)
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
	GetPlayerRecordHandlerV1Cmd.Flags().StringP("key", "", "", "Key")
	_ = GetPlayerRecordHandlerV1Cmd.MarkFlagRequired("key")
	GetPlayerRecordHandlerV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetPlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	GetPlayerRecordHandlerV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = GetPlayerRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
