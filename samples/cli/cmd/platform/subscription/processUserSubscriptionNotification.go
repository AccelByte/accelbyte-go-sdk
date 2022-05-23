// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package subscription

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/subscription"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ProcessUserSubscriptionNotificationCmd represents the ProcessUserSubscriptionNotification command
var ProcessUserSubscriptionNotificationCmd = &cobra.Command{
	Use:   "processUserSubscriptionNotification",
	Short: "Process user subscription notification",
	Long:  `Process user subscription notification`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		subscriptionId, _ := cmd.Flags().GetString("subscriptionId")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.TradeNotification
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &subscription.ProcessUserSubscriptionNotificationParams{
			Body:           body,
			Namespace:      namespace,
			SubscriptionID: subscriptionId,
			UserID:         userId,
		}
		errInput := subscriptionService.ProcessUserSubscriptionNotificationShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	ProcessUserSubscriptionNotificationCmd.Flags().String("body", "", "Body")
	ProcessUserSubscriptionNotificationCmd.Flags().String("namespace", "", "Namespace")
	_ = ProcessUserSubscriptionNotificationCmd.MarkFlagRequired("namespace")
	ProcessUserSubscriptionNotificationCmd.Flags().String("subscriptionId", "", "Subscription id")
	_ = ProcessUserSubscriptionNotificationCmd.MarkFlagRequired("subscriptionId")
	ProcessUserSubscriptionNotificationCmd.Flags().String("userId", "", "User id")
	_ = ProcessUserSubscriptionNotificationCmd.MarkFlagRequired("userId")
}
