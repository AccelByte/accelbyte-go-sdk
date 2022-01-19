// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot_config"
	"github.com/AccelByte/sample-apps/cmd"
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
		slotConfigService := &social.SlotConfigService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &slot_config.DeleteUserSlotConfigParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := slotConfigService.DeleteUserSlotConfig(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteUserSlotConfigCmd)
	deleteUserSlotConfigCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteUserSlotConfigCmd.MarkFlagRequired("namespace")
	deleteUserSlotConfigCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = deleteUserSlotConfigCmd.MarkFlagRequired("userId")
}
