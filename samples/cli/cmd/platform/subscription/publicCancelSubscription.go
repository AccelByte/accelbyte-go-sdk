// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/subscription"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicCancelSubscriptionCmd represents the publicCancelSubscription command
var publicCancelSubscriptionCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := subscriptionService.PublicCancelSubscription(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicCancelSubscriptionCmd)
	publicCancelSubscriptionCmd.Flags().StringP("body", "b", " ", "Body")
	publicCancelSubscriptionCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicCancelSubscriptionCmd.MarkFlagRequired("namespace")
	publicCancelSubscriptionCmd.Flags().StringP("subscriptionId", "s", " ", "Subscription id")
	_ = publicCancelSubscriptionCmd.MarkFlagRequired("subscriptionId")
	publicCancelSubscriptionCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicCancelSubscriptionCmd.MarkFlagRequired("userId")
}
