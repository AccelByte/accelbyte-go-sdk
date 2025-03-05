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

// AdminSyncSteamAbnormalTransactionCmd represents the AdminSyncSteamAbnormalTransaction command
var AdminSyncSteamAbnormalTransactionCmd = &cobra.Command{
	Use:   "adminSyncSteamAbnormalTransaction",
	Short: "Admin sync steam abnormal transaction",
	Long:  `Admin sync steam abnormal transaction`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &iap.AdminSyncSteamAbnormalTransactionParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := iapService.AdminSyncSteamAbnormalTransactionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminSyncSteamAbnormalTransactionCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSyncSteamAbnormalTransactionCmd.MarkFlagRequired("namespace")
	AdminSyncSteamAbnormalTransactionCmd.Flags().String("userId", "", "User id")
	_ = AdminSyncSteamAbnormalTransactionCmd.MarkFlagRequired("userId")
}
