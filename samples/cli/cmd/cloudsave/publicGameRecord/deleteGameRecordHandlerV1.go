// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicGameRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteGameRecordHandlerV1Cmd represents the DeleteGameRecordHandlerV1 command
var DeleteGameRecordHandlerV1Cmd = &cobra.Command{
	Use:   "deleteGameRecordHandlerV1",
	Short: "Delete game record handler V1",
	Long:  `Delete game record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGameRecordService := &cloudsave.PublicGameRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_game_record.DeleteGameRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
		}
		errInput := publicGameRecordService.DeleteGameRecordHandlerV1Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteGameRecordHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = DeleteGameRecordHandlerV1Cmd.MarkFlagRequired("key")
	DeleteGameRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteGameRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
