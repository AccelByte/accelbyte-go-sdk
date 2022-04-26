// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SyncTwitchDropsEntitlementCmd represents the SyncTwitchDropsEntitlement command
var SyncTwitchDropsEntitlementCmd = &cobra.Command{
	Use:   "syncTwitchDropsEntitlement",
	Short: "Sync twitch drops entitlement",
	Long:  `Sync twitch drops entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.TwitchSyncRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &i_a_p.SyncTwitchDropsEntitlementParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := iapService.SyncTwitchDropsEntitlementShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	SyncTwitchDropsEntitlementCmd.Flags().StringP("body", "", "", "Body")
	SyncTwitchDropsEntitlementCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SyncTwitchDropsEntitlementCmd.MarkFlagRequired("namespace")
	SyncTwitchDropsEntitlementCmd.Flags().StringP("userId", "", "", "User id")
	_ = SyncTwitchDropsEntitlementCmd.MarkFlagRequired("userId")
}
