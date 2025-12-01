// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package asyncMessaging

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/async_messaging"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateSubscriptionHandlerCmd represents the CreateSubscriptionHandler command
var CreateSubscriptionHandlerCmd = &cobra.Command{
	Use:   "createSubscriptionHandler",
	Short: "Create subscription handler",
	Long:  `Create subscription handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		asyncMessagingService := &csm.AsyncMessagingService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelCreateSubscriptionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &async_messaging.CreateSubscriptionHandlerParams{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := asyncMessagingService.CreateSubscriptionHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CreateSubscriptionHandlerCmd.Flags().String("body", "", "Body")
	_ = CreateSubscriptionHandlerCmd.MarkFlagRequired("body")
	CreateSubscriptionHandlerCmd.Flags().String("app", "", "App")
	_ = CreateSubscriptionHandlerCmd.MarkFlagRequired("app")
	CreateSubscriptionHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateSubscriptionHandlerCmd.MarkFlagRequired("namespace")
}
