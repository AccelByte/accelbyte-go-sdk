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

// GetGameRecordHandlerV1Cmd represents the GetGameRecordHandlerV1 command
var GetGameRecordHandlerV1Cmd = &cobra.Command{
	Use:   "getGameRecordHandlerV1",
	Short: "Get game record handler V1",
	Long:  `Get game record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGameRecordService := &cloudsave.PublicGameRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_game_record.GetGameRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
		}
		ok, errOK := publicGameRecordService.GetGameRecordHandlerV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetGameRecordHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = GetGameRecordHandlerV1Cmd.MarkFlagRequired("key")
	GetGameRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetGameRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
