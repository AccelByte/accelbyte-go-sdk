// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicPlayerBinaryRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPlayerPublicBinaryRecordsV1Cmd represents the GetPlayerPublicBinaryRecordsV1 command
var GetPlayerPublicBinaryRecordsV1Cmd = &cobra.Command{
	Use:   "getPlayerPublicBinaryRecordsV1",
	Short: "Get player public binary records V1",
	Long:  `Get player public binary records V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerBinaryRecordService := &cloudsave.PublicPlayerBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_player_binary_record.GetPlayerPublicBinaryRecordsV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicPlayerBinaryRecordService.GetPlayerPublicBinaryRecordsV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetPlayerPublicBinaryRecordsV1Cmd.Flags().String("key", "", "Key")
	_ = GetPlayerPublicBinaryRecordsV1Cmd.MarkFlagRequired("key")
	GetPlayerPublicBinaryRecordsV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetPlayerPublicBinaryRecordsV1Cmd.MarkFlagRequired("namespace")
	GetPlayerPublicBinaryRecordsV1Cmd.Flags().String("userId", "", "User id")
	_ = GetPlayerPublicBinaryRecordsV1Cmd.MarkFlagRequired("userId")
}
