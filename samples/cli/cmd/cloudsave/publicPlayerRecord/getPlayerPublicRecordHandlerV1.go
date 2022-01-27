// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicPlayerRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getPlayerPublicRecordHandlerV1Cmd represents the getPlayerPublicRecordHandlerV1 command
var getPlayerPublicRecordHandlerV1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicPlayerRecordService.GetPlayerPublicRecordHandlerV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getPlayerPublicRecordHandlerV1Cmd)
	getPlayerPublicRecordHandlerV1Cmd.Flags().StringP("key", "ky", " ", "Key")
	_ = getPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("key")
	getPlayerPublicRecordHandlerV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	getPlayerPublicRecordHandlerV1Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = getPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
