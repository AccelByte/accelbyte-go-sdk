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

// DeletePlayerRecordHandlerV1Cmd represents the DeletePlayerRecordHandlerV1 command
var DeletePlayerRecordHandlerV1Cmd = &cobra.Command{
	Use:   "deletePlayerRecordHandlerV1",
	Short: "Delete player record handler V1",
	Long:  `Delete player record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerRecordService := &cloudsave.PublicPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_player_record.DeletePlayerRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := publicPlayerRecordService.DeletePlayerRecordHandlerV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DeletePlayerRecordHandlerV1Cmd.Flags().StringP("key", "", " ", "Key")
	_ = DeletePlayerRecordHandlerV1Cmd.MarkFlagRequired("key")
	DeletePlayerRecordHandlerV1Cmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = DeletePlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	DeletePlayerRecordHandlerV1Cmd.Flags().StringP("userId", "", " ", "User id")
	_ = DeletePlayerRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
