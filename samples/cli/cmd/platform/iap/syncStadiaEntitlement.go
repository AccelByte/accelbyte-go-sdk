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

// SyncStadiaEntitlementCmd represents the SyncStadiaEntitlement command
var SyncStadiaEntitlementCmd = &cobra.Command{
	Use:   "syncStadiaEntitlement",
	Short: "Sync stadia entitlement",
	Long:  `Sync stadia entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.StadiaSyncRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &i_a_p.SyncStadiaEntitlementParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := iapService.SyncStadiaEntitlementShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	SyncStadiaEntitlementCmd.Flags().String("body", "", "Body")
	SyncStadiaEntitlementCmd.Flags().String("namespace", "", "Namespace")
	_ = SyncStadiaEntitlementCmd.MarkFlagRequired("namespace")
	SyncStadiaEntitlementCmd.Flags().String("userId", "", "User id")
	_ = SyncStadiaEntitlementCmd.MarkFlagRequired("userId")
}
