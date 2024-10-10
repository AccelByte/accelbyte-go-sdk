// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iapSubscription

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap_subscription"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SyncSubscriptionTransactionCmd represents the SyncSubscriptionTransaction command
var SyncSubscriptionTransactionCmd = &cobra.Command{
	Use:   "syncSubscriptionTransaction",
	Short: "Sync subscription transaction",
	Long:  `Sync subscription transaction`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &iap_subscription.SyncSubscriptionTransactionParams{
			ID:        id_,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := iapSubscriptionService.SyncSubscriptionTransactionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SyncSubscriptionTransactionCmd.Flags().String("id", "", "Id")
	_ = SyncSubscriptionTransactionCmd.MarkFlagRequired("id")
	SyncSubscriptionTransactionCmd.Flags().String("namespace", "", "Namespace")
	_ = SyncSubscriptionTransactionCmd.MarkFlagRequired("namespace")
	SyncSubscriptionTransactionCmd.Flags().String("userId", "", "User id")
	_ = SyncSubscriptionTransactionCmd.MarkFlagRequired("userId")
}
