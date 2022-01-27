// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package slotConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot_config"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserSlotConfigCmd represents the getUserSlotConfig command
var getUserSlotConfigCmd = &cobra.Command{
	Use:   "getUserSlotConfig",
	Short: "Get user slot config",
	Long:  `Get user slot config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotConfigService := &social.SlotConfigService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &slot_config.GetUserSlotConfigParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := slotConfigService.GetUserSlotConfig(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserSlotConfigCmd)
	getUserSlotConfigCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getUserSlotConfigCmd.MarkFlagRequired("namespace")
	getUserSlotConfigCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = getUserSlotConfigCmd.MarkFlagRequired("userId")
}
