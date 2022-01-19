// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicFulfillAppleIAPItemCmd represents the publicFulfillAppleIAPItem command
var publicFulfillAppleIAPItemCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := iapService.PublicFulfillAppleIAPItem(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicFulfillAppleIAPItemCmd)
	publicFulfillAppleIAPItemCmd.Flags().StringP("body", "b", " ", "Body")
	publicFulfillAppleIAPItemCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicFulfillAppleIAPItemCmd.MarkFlagRequired("namespace")
	publicFulfillAppleIAPItemCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicFulfillAppleIAPItemCmd.MarkFlagRequired("userId")
}
