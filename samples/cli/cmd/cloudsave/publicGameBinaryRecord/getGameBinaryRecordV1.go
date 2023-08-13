// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicGameBinaryRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetGameBinaryRecordV1Cmd represents the GetGameBinaryRecordV1 command
var GetGameBinaryRecordV1Cmd = &cobra.Command{
	Use:   "getGameBinaryRecordV1",
	Short: "Get game binary record V1",
	Long:  `Get game binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGameBinaryRecordService := &cloudsave.PublicGameBinaryRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_game_binary_record.GetGameBinaryRecordV1Params{
			Key:       key,
			Namespace: namespace,
		}
		ok, errOK := publicGameBinaryRecordService.GetGameBinaryRecordV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetGameBinaryRecordV1Cmd.Flags().String("key", "", "Key")
	_ = GetGameBinaryRecordV1Cmd.MarkFlagRequired("key")
	GetGameBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetGameBinaryRecordV1Cmd.MarkFlagRequired("namespace")
}
