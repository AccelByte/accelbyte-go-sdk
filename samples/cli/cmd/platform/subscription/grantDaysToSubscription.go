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

// grantDaysToSubscriptionCmd represents the grantDaysToSubscription command
var grantDaysToSubscriptionCmd = &cobra.Command{
	Use:   "grantDaysToSubscription",
	Short: "Grant days to subscription",
	Long:  `Grant days to subscription`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		subscriptionId, _ := cmd.Flags().GetString("subscriptionId")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.GrantSubscriptionDaysRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &subscription.GrantDaysToSubscriptionParams{
			Body:           body,
			Namespace:      namespace,
			SubscriptionID: subscriptionId,
			UserID:         userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := subscriptionService.GrantDaysToSubscription(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(grantDaysToSubscriptionCmd)
	grantDaysToSubscriptionCmd.Flags().StringP("body", "by", " ", "Body")
	grantDaysToSubscriptionCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = grantDaysToSubscriptionCmd.MarkFlagRequired("namespace")
	grantDaysToSubscriptionCmd.Flags().StringP("subscriptionId", "sd", " ", "Subscription id")
	_ = grantDaysToSubscriptionCmd.MarkFlagRequired("subscriptionId")
	grantDaysToSubscriptionCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = grantDaysToSubscriptionCmd.MarkFlagRequired("userId")
}
