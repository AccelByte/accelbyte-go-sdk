// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicPlayerRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPlayerPublicRecordHandlerV1Cmd represents the GetPlayerPublicRecordHandlerV1 command
var GetPlayerPublicRecordHandlerV1Cmd = &cobra.Command{
	Use:   "getPlayerPublicRecordHandlerV1",
	Short: "Get player public record handler V1",
	Long:  `Get player public record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerRecordService := &cloudsave.PublicPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_player_record.GetPlayerPublicRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicPlayerRecordService.GetPlayerPublicRecordHandlerV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetPlayerPublicRecordHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = GetPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("key")
	GetPlayerPublicRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	GetPlayerPublicRecordHandlerV1Cmd.Flags().String("userId", "", "User id")
	_ = GetPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
