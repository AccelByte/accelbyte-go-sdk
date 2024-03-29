// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// UpdateNamespaceSlotConfigCmd represents the UpdateNamespaceSlotConfig command
var UpdateNamespaceSlotConfigCmd = &cobra.Command{
	Use:   "updateNamespaceSlotConfig",
	Short: "Update namespace slot config",
	Long:  `Update namespace slot config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotConfigService := &social.SlotConfigService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.SlotConfigUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &slot_config.UpdateNamespaceSlotConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := slotConfigService.UpdateNamespaceSlotConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateNamespaceSlotConfigCmd.Flags().String("body", "", "Body")
	UpdateNamespaceSlotConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateNamespaceSlotConfigCmd.MarkFlagRequired("namespace")
}
