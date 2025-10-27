// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iapSubscription

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap_subscription"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AddTierIntoMetaQuestSubscriptionGroupCmd represents the AddTierIntoMetaQuestSubscriptionGroup command
var AddTierIntoMetaQuestSubscriptionGroupCmd = &cobra.Command{
	Use:   "addTierIntoMetaQuestSubscriptionGroup",
	Short: "Add tier into meta quest subscription group",
	Long:  `Add tier into meta quest subscription group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.ThirdPartySubscriptionTierCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &iap_subscription.AddTierIntoMetaQuestSubscriptionGroupParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := iapSubscriptionService.AddTierIntoMetaQuestSubscriptionGroupShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AddTierIntoMetaQuestSubscriptionGroupCmd.Flags().String("body", "", "Body")
	AddTierIntoMetaQuestSubscriptionGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = AddTierIntoMetaQuestSubscriptionGroupCmd.MarkFlagRequired("namespace")
}
