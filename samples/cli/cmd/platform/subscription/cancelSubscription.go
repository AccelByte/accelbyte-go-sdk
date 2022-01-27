// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package subscription

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

// cancelSubscriptionCmd represents the cancelSubscription command
var cancelSubscriptionCmd = &cobra.Command{
	Use:   "cancelSubscription",
	Short: "Cancel subscription",
	Long:  `Cancel subscription`,
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
		force, _ := cmd.Flags().GetBool("force")
		input := &subscription.CancelSubscriptionParams{
			Body:           body,
			Namespace:      namespace,
			SubscriptionID: subscriptionId,
			UserID:         userId,
			Force:          &force,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := subscriptionService.CancelSubscription(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(cancelSubscriptionCmd)
	cancelSubscriptionCmd.Flags().StringP("body", "by", " ", "Body")
	cancelSubscriptionCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = cancelSubscriptionCmd.MarkFlagRequired("namespace")
	cancelSubscriptionCmd.Flags().StringP("subscriptionId", "sd", " ", "Subscription id")
	_ = cancelSubscriptionCmd.MarkFlagRequired("subscriptionId")
	cancelSubscriptionCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = cancelSubscriptionCmd.MarkFlagRequired("userId")
	cancelSubscriptionCmd.Flags().BoolP("force", "fe", false, "Force")
}
