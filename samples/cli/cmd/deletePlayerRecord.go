// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"

	"github.com/spf13/cobra"
)

// deletePlayerRecordCmd represents the deletePlayerRecord command
var deletePlayerRecordCmd = &cobra.Command{
	Use:   "deletePlayerRecord",
	Short: "Delete player records",
	Long:  `Delete player records`,
	RunE: func(cmd *cobra.Command, args []string) error {
		key := cmd.Flag("key").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		cloudSaveService := &cloudsave.PublicPlayerRecordService{
			Client:          factory.NewCloudSaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &public_player_record.DeletePlayerRecordHandlerV1Params{
			UserID:    userId,
			Namespace: namespace,
			Key:       key,
		}
		err := cloudSaveService.DeletePlayerRecordHandlerV1(input)
		if err != nil {
			return err
		}
		logrus.Info("Player record deleted")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deletePlayerRecordCmd)
	deletePlayerRecordCmd.Flags().StringP("userId", "u", "", "User ID")
	_ = deletePlayerRecordCmd.MarkFlagRequired("userId")
	deletePlayerRecordCmd.Flags().StringP("namespace", "n", "", "User namespace")
	_ = deletePlayerRecordCmd.MarkFlagRequired("namespace")
	deletePlayerRecordCmd.Flags().StringP("key", "k", "", "Player records key")
	_ = deletePlayerRecordCmd.MarkFlagRequired("key")
}
