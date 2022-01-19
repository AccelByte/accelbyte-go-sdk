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

// deletePlayerRecordHandlerV1Cmd represents the deletePlayerRecordHandlerV1 command
var deletePlayerRecordHandlerV1Cmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(deletePlayerRecordHandlerV1Cmd)
	deletePlayerRecordHandlerV1Cmd.Flags().StringP("key", "k", " ", "Key")
	_ = deletePlayerRecordHandlerV1Cmd.MarkFlagRequired("key")
	deletePlayerRecordHandlerV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deletePlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	deletePlayerRecordHandlerV1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = deletePlayerRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
