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

// BulkSaveSubscriptionAppNotificationV2Cmd represents the BulkSaveSubscriptionAppNotificationV2 command
var BulkSaveSubscriptionAppNotificationV2Cmd = &cobra.Command{
	Use:   "bulkSaveSubscriptionAppNotificationV2",
	Short: "Bulk save subscription app notification V2",
	Long:  `Bulk save subscription app notification V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationSubscriptionService := &csm.NotificationSubscriptionService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelBulkSubscribeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &notification_subscription.BulkSaveSubscriptionAppNotificationV2Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := notificationSubscriptionService.BulkSaveSubscriptionAppNotificationV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkSaveSubscriptionAppNotificationV2Cmd.Flags().String("body", "", "Body")
	_ = BulkSaveSubscriptionAppNotificationV2Cmd.MarkFlagRequired("body")
	BulkSaveSubscriptionAppNotificationV2Cmd.Flags().String("app", "", "App")
	_ = BulkSaveSubscriptionAppNotificationV2Cmd.MarkFlagRequired("app")
	BulkSaveSubscriptionAppNotificationV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = BulkSaveSubscriptionAppNotificationV2Cmd.MarkFlagRequired("namespace")
}
