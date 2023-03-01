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

// CancelSubscriptionCmd represents the CancelSubscription command
var CancelSubscriptionCmd = &cobra.Command{
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
		ok, errOK := subscriptionService.CancelSubscriptionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CancelSubscriptionCmd.Flags().String("body", "", "Body")
	CancelSubscriptionCmd.Flags().String("namespace", "", "Namespace")
	_ = CancelSubscriptionCmd.MarkFlagRequired("namespace")
	CancelSubscriptionCmd.Flags().String("subscriptionId", "", "Subscription id")
	_ = CancelSubscriptionCmd.MarkFlagRequired("subscriptionId")
	CancelSubscriptionCmd.Flags().String("userId", "", "User id")
	_ = CancelSubscriptionCmd.MarkFlagRequired("userId")
	CancelSubscriptionCmd.Flags().Bool("force", false, "Force")
}
