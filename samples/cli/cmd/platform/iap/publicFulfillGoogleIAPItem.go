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
		ok, err := iapService.PublicFulfillGoogleIAPItemShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	PublicFulfillGoogleIAPItemCmd.Flags().String("body", "", "Body")
	PublicFulfillGoogleIAPItemCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicFulfillGoogleIAPItemCmd.MarkFlagRequired("namespace")
	PublicFulfillGoogleIAPItemCmd.Flags().String("userId", "", "User id")
	_ = PublicFulfillGoogleIAPItemCmd.MarkFlagRequired("userId")
}
