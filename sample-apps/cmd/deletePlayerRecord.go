// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
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
		cloudSaveService := &service.CloudSaveService{
			CloudSaveServiceClient: factory.NewCloudSaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:        &repository.TokenRepositoryImpl{},
		}
		err := cloudSaveService.DeletePlayerRecord(userId, namespace, key)
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
	deletePlayerRecordCmd.MarkFlagRequired("userId")
	deletePlayerRecordCmd.Flags().StringP("namespace", "n", "", "User namespace")
	deletePlayerRecordCmd.MarkFlagRequired("namespace")
	deletePlayerRecordCmd.Flags().StringP("key", "k", "", "Player records key")
	deletePlayerRecordCmd.MarkFlagRequired("key")
}
