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

// PublicSubscribeSubscriptionCmd represents the PublicSubscribeSubscription command
var PublicSubscribeSubscriptionCmd = &cobra.Command{
	Use:   "publicSubscribeSubscription",
	Short: "Public subscribe subscription",
	Long:  `Public subscribe subscription`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.SubscribeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &subscription.PublicSubscribeSubscriptionParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errCreated := subscriptionService.PublicSubscribeSubscriptionShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicSubscribeSubscriptionCmd.Flags().String("body", "", "Body")
	_ = PublicSubscribeSubscriptionCmd.MarkFlagRequired("body")
	PublicSubscribeSubscriptionCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicSubscribeSubscriptionCmd.MarkFlagRequired("namespace")
	PublicSubscribeSubscriptionCmd.Flags().String("userId", "", "User id")
	_ = PublicSubscribeSubscriptionCmd.MarkFlagRequired("userId")
}
