// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package slotConfig

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot_config"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateUserSlotConfigCmd represents the UpdateUserSlotConfig command
var UpdateUserSlotConfigCmd = &cobra.Command{
	Use:   "UpdateUserSlotConfig",
	Short: "Update user slot config",
	Long:  `Update user slot config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotConfigService := &social.SlotConfigService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.SlotConfigUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &slot_config.UpdateUserSlotConfigParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := slotConfigService.UpdateUserSlotConfig(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	UpdateUserSlotConfigCmd.Flags().StringP("body", "by", " ", "Body")
	UpdateUserSlotConfigCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = UpdateUserSlotConfigCmd.MarkFlagRequired("namespace")
	UpdateUserSlotConfigCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = UpdateUserSlotConfigCmd.MarkFlagRequired("userId")
}
