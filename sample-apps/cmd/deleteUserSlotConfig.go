// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteUserSlotConfigCmd represents the deleteUserSlotConfig command
var deleteUserSlotConfigCmd = &cobra.Command{
	Use:   "deleteUserSlotConfig",
	Short: "Delete user slot config",
	Long:  `Delete user slot config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("deleteUserSlotConfig called")
		socialService := &service.SlotConfigService{
			SocialServiceClient: factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:     &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		err := socialService.DeleteUserSlotConfig(namespace, userId)
		if err != nil {
			logrus.Error(err)
			return err
		}
		logrus.Info("SlotConfig deletion succeed")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteUserSlotConfigCmd)
	deleteUserSlotConfigCmd.Flags().StringP("namespace", "n", "", "User namespace")
	deleteUserSlotConfigCmd.MarkFlagRequired("namespace")
	deleteUserSlotConfigCmd.Flags().StringP("userId", "u", "", "User ID")
	deleteUserSlotConfigCmd.MarkFlagRequired("userId")
}
