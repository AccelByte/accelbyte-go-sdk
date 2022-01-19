// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getPlayerRecordHandlerV1Cmd represents the getPlayerRecordHandlerV1 command
var getPlayerRecordHandlerV1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicPlayerRecordService.GetPlayerRecordHandlerV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getPlayerRecordHandlerV1Cmd)
	getPlayerRecordHandlerV1Cmd.Flags().StringP("key", "k", " ", "Key")
	_ = getPlayerRecordHandlerV1Cmd.MarkFlagRequired("key")
	getPlayerRecordHandlerV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getPlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	getPlayerRecordHandlerV1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getPlayerRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
