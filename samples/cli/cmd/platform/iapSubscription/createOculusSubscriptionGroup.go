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

// CreateOculusSubscriptionGroupCmd represents the CreateOculusSubscriptionGroup command
var CreateOculusSubscriptionGroupCmd = &cobra.Command{
	Use:   "createOculusSubscriptionGroup",
	Short: "Create oculus subscription group",
	Long:  `Create oculus subscription group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.ThirdPartySubscriptionGroupCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &iap_subscription.CreateOculusSubscriptionGroupParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := iapSubscriptionService.CreateOculusSubscriptionGroupShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CreateOculusSubscriptionGroupCmd.Flags().String("body", "", "Body")
	CreateOculusSubscriptionGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateOculusSubscriptionGroupCmd.MarkFlagRequired("namespace")
}
