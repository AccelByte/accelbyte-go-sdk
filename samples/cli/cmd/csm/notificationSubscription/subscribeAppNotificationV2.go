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

// SubscribeAppNotificationV2Cmd represents the SubscribeAppNotificationV2 command
var SubscribeAppNotificationV2Cmd = &cobra.Command{
	Use:   "subscribeAppNotificationV2",
	Short: "Subscribe app notification V2",
	Long:  `Subscribe app notification V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationSubscriptionService := &csm.NotificationSubscriptionService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelSubscribeNotificationRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &notification_subscription.SubscribeAppNotificationV2Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := notificationSubscriptionService.SubscribeAppNotificationV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SubscribeAppNotificationV2Cmd.Flags().String("body", "", "Body")
	_ = SubscribeAppNotificationV2Cmd.MarkFlagRequired("body")
	SubscribeAppNotificationV2Cmd.Flags().String("app", "", "App")
	_ = SubscribeAppNotificationV2Cmd.MarkFlagRequired("app")
	SubscribeAppNotificationV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = SubscribeAppNotificationV2Cmd.MarkFlagRequired("namespace")
}
