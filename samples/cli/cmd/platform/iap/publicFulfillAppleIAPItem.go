// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicFulfillAppleIAPItemCmd represents the PublicFulfillAppleIAPItem command
var PublicFulfillAppleIAPItemCmd = &cobra.Command{
	Use:   "publicFulfillAppleIAPItem",
	Short: "Public fulfill apple IAP item",
	Long:  `Public fulfill apple IAP item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.AppleIAPReceipt
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &i_a_p.PublicFulfillAppleIAPItemParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := iapService.PublicFulfillAppleIAPItemShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicFulfillAppleIAPItemCmd.Flags().String("body", "", "Body")
	PublicFulfillAppleIAPItemCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicFulfillAppleIAPItemCmd.MarkFlagRequired("namespace")
	PublicFulfillAppleIAPItemCmd.Flags().String("userId", "", "User id")
	_ = PublicFulfillAppleIAPItemCmd.MarkFlagRequired("userId")
}
