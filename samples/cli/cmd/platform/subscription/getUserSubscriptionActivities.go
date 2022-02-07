// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package subscription

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/subscription"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserSubscriptionActivitiesCmd represents the GetUserSubscriptionActivities command
var GetUserSubscriptionActivitiesCmd = &cobra.Command{
	Use:   "getUserSubscriptionActivities",
	Short: "Get user subscription activities",
	Long:  `Get user subscription activities`,
	RunE: func(cmd *cobra.Command, args []string) error {
		subscriptionService := &platform.SubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		excludeSystem, _ := cmd.Flags().GetBool("excludeSystem")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		subscriptionId, _ := cmd.Flags().GetString("subscriptionId")
		input := &subscription.GetUserSubscriptionActivitiesParams{
			Namespace:      namespace,
			UserID:         userId,
			ExcludeSystem:  &excludeSystem,
			Limit:          &limit,
			Offset:         &offset,
			SubscriptionID: &subscriptionId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := subscriptionService.GetUserSubscriptionActivities(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetUserSubscriptionActivitiesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserSubscriptionActivitiesCmd.MarkFlagRequired("namespace")
	GetUserSubscriptionActivitiesCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserSubscriptionActivitiesCmd.MarkFlagRequired("userId")
	GetUserSubscriptionActivitiesCmd.Flags().BoolP("excludeSystem", "", false, "Exclude system")
	GetUserSubscriptionActivitiesCmd.Flags().Int32P("limit", "", 20, "Limit")
	GetUserSubscriptionActivitiesCmd.Flags().Int32P("offset", "", 0, "Offset")
	GetUserSubscriptionActivitiesCmd.Flags().StringP("subscriptionId", "", "", "Subscription id")
}
