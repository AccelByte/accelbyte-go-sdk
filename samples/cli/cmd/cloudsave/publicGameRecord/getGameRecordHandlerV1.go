// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getGameRecordHandlerV1Cmd represents the getGameRecordHandlerV1 command
var getGameRecordHandlerV1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicGameRecordService.GetGameRecordHandlerV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getGameRecordHandlerV1Cmd)
	getGameRecordHandlerV1Cmd.Flags().StringP("key", "k", " ", "Key")
	_ = getGameRecordHandlerV1Cmd.MarkFlagRequired("key")
	getGameRecordHandlerV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getGameRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
