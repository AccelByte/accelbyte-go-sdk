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

// GetNamespaceSlotConfigCmd represents the GetNamespaceSlotConfig command
var GetNamespaceSlotConfigCmd = &cobra.Command{
	Use:   "getNamespaceSlotConfig",
	Short: "Get namespace slot config",
	Long:  `Get namespace slot config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotConfigService := &social.SlotConfigService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &slot_config.GetNamespaceSlotConfigParams{
			Namespace: namespace,
		}
		ok, err := slotConfigService.GetNamespaceSlotConfigShort(input)
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
	GetNamespaceSlotConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetNamespaceSlotConfigCmd.MarkFlagRequired("namespace")
}
