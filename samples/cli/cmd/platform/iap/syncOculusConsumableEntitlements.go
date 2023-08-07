// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SyncOculusConsumableEntitlementsCmd represents the SyncOculusConsumableEntitlements command
var SyncOculusConsumableEntitlementsCmd = &cobra.Command{
	Use:   "syncOculusConsumableEntitlements",
	Short: "Sync oculus consumable entitlements",
	Long:  `Sync oculus consumable entitlements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &iap.SyncOculusConsumableEntitlementsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := iapService.SyncOculusConsumableEntitlementsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SyncOculusConsumableEntitlementsCmd.Flags().String("namespace", "", "Namespace")
	_ = SyncOculusConsumableEntitlementsCmd.MarkFlagRequired("namespace")
	SyncOculusConsumableEntitlementsCmd.Flags().String("userId", "", "User id")
	_ = SyncOculusConsumableEntitlementsCmd.MarkFlagRequired("userId")
}
