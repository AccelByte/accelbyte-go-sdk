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

// GetSubscriptionHistoryCmd represents the GetSubscriptionHistory command
var GetSubscriptionHistoryCmd = &cobra.Command{
	Use:   "getSubscriptionHistory",
	Short: "Get subscription history",
	Long:  `Get subscription history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &iap_subscription.GetSubscriptionHistoryParams{
			ID:        id_,
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := iapSubscriptionService.GetSubscriptionHistoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetSubscriptionHistoryCmd.Flags().String("id", "", "Id")
	_ = GetSubscriptionHistoryCmd.MarkFlagRequired("id")
	GetSubscriptionHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = GetSubscriptionHistoryCmd.MarkFlagRequired("namespace")
	GetSubscriptionHistoryCmd.Flags().String("userId", "", "User id")
	_ = GetSubscriptionHistoryCmd.MarkFlagRequired("userId")
	GetSubscriptionHistoryCmd.Flags().Int32("limit", 20, "Limit")
	GetSubscriptionHistoryCmd.Flags().Int32("offset", 0, "Offset")
}
