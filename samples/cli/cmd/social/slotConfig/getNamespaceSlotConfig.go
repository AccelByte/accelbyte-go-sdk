// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package slotConfig

import (
	"encoding/json"
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := slotConfigService.GetNamespaceSlotConfig(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	GetNamespaceSlotConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetNamespaceSlotConfigCmd.MarkFlagRequired("namespace")
}
