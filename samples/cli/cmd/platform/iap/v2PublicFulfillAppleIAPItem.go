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

// V2PublicFulfillAppleIAPItemCmd represents the V2PublicFulfillAppleIAPItem command
var V2PublicFulfillAppleIAPItemCmd = &cobra.Command{
	Use:   "v2PublicFulfillAppleIAPItem",
	Short: "V2 public fulfill apple IAP item",
	Long:  `V2 public fulfill apple IAP item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.AppleIAPRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &iap.V2PublicFulfillAppleIAPItemParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := iapService.V2PublicFulfillAppleIAPItemShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	V2PublicFulfillAppleIAPItemCmd.Flags().String("body", "", "Body")
	V2PublicFulfillAppleIAPItemCmd.Flags().String("namespace", "", "Namespace")
	_ = V2PublicFulfillAppleIAPItemCmd.MarkFlagRequired("namespace")
	V2PublicFulfillAppleIAPItemCmd.Flags().String("userId", "", "User id")
	_ = V2PublicFulfillAppleIAPItemCmd.MarkFlagRequired("userId")
}
