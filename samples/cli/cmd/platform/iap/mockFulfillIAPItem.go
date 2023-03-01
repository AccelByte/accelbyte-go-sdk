// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// MockFulfillIAPItemCmd represents the MockFulfillIAPItem command
var MockFulfillIAPItemCmd = &cobra.Command{
	Use:   "mockFulfillIAPItem",
	Short: "Mock fulfill IAP item",
	Long:  `Mock fulfill IAP item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.MockIAPReceipt
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &iap.MockFulfillIAPItemParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := iapService.MockFulfillIAPItemShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	MockFulfillIAPItemCmd.Flags().String("body", "", "Body")
	MockFulfillIAPItemCmd.Flags().String("namespace", "", "Namespace")
	_ = MockFulfillIAPItemCmd.MarkFlagRequired("namespace")
	MockFulfillIAPItemCmd.Flags().String("userId", "", "User id")
	_ = MockFulfillIAPItemCmd.MarkFlagRequired("userId")
}
