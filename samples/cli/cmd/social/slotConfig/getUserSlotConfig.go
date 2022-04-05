// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package slotConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot_config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserSlotConfigCmd represents the GetUserSlotConfig command
var GetUserSlotConfigCmd = &cobra.Command{
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
		ok, err := slotConfigService.GetUserSlotConfigShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetUserSlotConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserSlotConfigCmd.MarkFlagRequired("namespace")
	GetUserSlotConfigCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserSlotConfigCmd.MarkFlagRequired("userId")
}
