// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notificationSubscription

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/notification_subscription"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SubscribeV2HandlerCmd represents the SubscribeV2Handler command
var SubscribeV2HandlerCmd = &cobra.Command{
	Use:   "subscribeV2Handler",
	Short: "Subscribe V2 handler",
	Long:  `Subscribe V2 handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationSubscriptionService := &csm.NotificationSubscriptionService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelSelfSubscribeNotificationRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &notification_subscription.SubscribeV2HandlerParams{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		errNoContent := notificationSubscriptionService.SubscribeV2HandlerShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	SubscribeV2HandlerCmd.Flags().String("body", "", "Body")
	_ = SubscribeV2HandlerCmd.MarkFlagRequired("body")
	SubscribeV2HandlerCmd.Flags().String("app", "", "App")
	_ = SubscribeV2HandlerCmd.MarkFlagRequired("app")
	SubscribeV2HandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = SubscribeV2HandlerCmd.MarkFlagRequired("namespace")
}
