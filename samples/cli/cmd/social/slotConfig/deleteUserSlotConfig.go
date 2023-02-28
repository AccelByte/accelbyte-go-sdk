// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slotConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot_config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteUserSlotConfigCmd represents the DeleteUserSlotConfig command
var DeleteUserSlotConfigCmd = &cobra.Command{
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
		errNoContent := slotConfigService.DeleteUserSlotConfigShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteUserSlotConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteUserSlotConfigCmd.MarkFlagRequired("namespace")
	DeleteUserSlotConfigCmd.Flags().String("userId", "", "User id")
	_ = DeleteUserSlotConfigCmd.MarkFlagRequired("userId")
}
