// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package subscription

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/subscription"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteUserSubscriptionCmd represents the DeleteUserSubscription command
var DeleteUserSubscriptionCmd = &cobra.Command{
	Use:   "deleteUserSubscription",
	Short: "Delete user subscription",
	Long:  `Delete user subscription`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		subscriptionId, _ := cmd.Flags().GetString("subscriptionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &subscription.DeleteUserSubscriptionParams{
			Namespace:      namespace,
			SubscriptionID: subscriptionId,
			UserID:         userId,
		}
		errInput := subscriptionService.DeleteUserSubscriptionShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteUserSubscriptionCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteUserSubscriptionCmd.MarkFlagRequired("namespace")
	DeleteUserSubscriptionCmd.Flags().StringP("subscriptionId", "", "", "Subscription id")
	_ = DeleteUserSubscriptionCmd.MarkFlagRequired("subscriptionId")
	DeleteUserSubscriptionCmd.Flags().StringP("userId", "", "", "User id")
	_ = DeleteUserSubscriptionCmd.MarkFlagRequired("userId")
}
