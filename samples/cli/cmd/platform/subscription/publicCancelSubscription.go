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

// PublicCancelSubscriptionCmd represents the PublicCancelSubscription command
var PublicCancelSubscriptionCmd = &cobra.Command{
	Use:   "publicCancelSubscription",
	Short: "Public cancel subscription",
	Long:  `Public cancel subscription`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		subscriptionId, _ := cmd.Flags().GetString("subscriptionId")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CancelRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &subscription.PublicCancelSubscriptionParams{
			Body:           body,
			Namespace:      namespace,
			SubscriptionID: subscriptionId,
			UserID:         userId,
		}
		ok, err := subscriptionService.PublicCancelSubscriptionShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	PublicCancelSubscriptionCmd.Flags().String("body", "", "Body")
	PublicCancelSubscriptionCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCancelSubscriptionCmd.MarkFlagRequired("namespace")
	PublicCancelSubscriptionCmd.Flags().String("subscriptionId", "", "Subscription id")
	_ = PublicCancelSubscriptionCmd.MarkFlagRequired("subscriptionId")
	PublicCancelSubscriptionCmd.Flags().String("userId", "", "User id")
	_ = PublicCancelSubscriptionCmd.MarkFlagRequired("userId")
}
