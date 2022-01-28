// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// PublicFulfillGoogleIAPItemCmd represents the PublicFulfillGoogleIAPItem command
var PublicFulfillGoogleIAPItemCmd = &cobra.Command{
	Use:   "publicFulfillGoogleIAPItem",
	Short: "Public fulfill google IAP item",
	Long:  `Public fulfill google IAP item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.GoogleIAPReceipt
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &i_a_p.PublicFulfillGoogleIAPItemParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := iapService.PublicFulfillGoogleIAPItem(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	PublicFulfillGoogleIAPItemCmd.Flags().StringP("body", "", " ", "Body")
	PublicFulfillGoogleIAPItemCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = PublicFulfillGoogleIAPItemCmd.MarkFlagRequired("namespace")
	PublicFulfillGoogleIAPItemCmd.Flags().StringP("userId", "", " ", "User id")
	_ = PublicFulfillGoogleIAPItemCmd.MarkFlagRequired("userId")
}
