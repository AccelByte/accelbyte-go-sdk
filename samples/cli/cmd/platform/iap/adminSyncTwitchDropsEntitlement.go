// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminSyncTwitchDropsEntitlementCmd represents the AdminSyncTwitchDropsEntitlement command
var AdminSyncTwitchDropsEntitlementCmd = &cobra.Command{
	Use:   "adminSyncTwitchDropsEntitlement",
	Short: "Admin sync twitch drops entitlement",
	Long:  `Admin sync twitch drops entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.TwitchSyncRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &iap.AdminSyncTwitchDropsEntitlementParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := iapService.AdminSyncTwitchDropsEntitlementShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminSyncTwitchDropsEntitlementCmd.Flags().String("body", "", "Body")
	_ = AdminSyncTwitchDropsEntitlementCmd.MarkFlagRequired("body")
	AdminSyncTwitchDropsEntitlementCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSyncTwitchDropsEntitlementCmd.MarkFlagRequired("namespace")
	AdminSyncTwitchDropsEntitlementCmd.Flags().String("userId", "", "User id")
	_ = AdminSyncTwitchDropsEntitlementCmd.MarkFlagRequired("userId")
}
