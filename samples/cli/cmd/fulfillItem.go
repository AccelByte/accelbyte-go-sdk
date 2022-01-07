// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"

	"github.com/spf13/cobra"
)

// fulfillItemCmd represents the fulfillItem command
var fulfillItemCmd = &cobra.Command{
	Use:   "fulfillItem",
	Short: "Fulfill item",
	Long:  `Fulfill item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userId, err := cmd.Flags().GetString("userId")
		if err != nil {
			return err
		}
		namespace, err := cmd.Flags().GetString("namespace")
		if err != nil {
			return err
		}
		itemId, err := cmd.Flags().GetString("itemId")
		if err != nil {
			return err
		}
		quantity, err := cmd.Flags().GetInt32("quantity")
		if err != nil {
			return err
		}

		request := &platformclientmodels.FulfillmentRequest{
			ItemID:   itemId,
			Quantity: &quantity,
		}
		input := &fulfillment.FulfillItemParams{
			Body:      request,
			Namespace: namespace,
			UserID:    userId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		grantEntitlement, err := fulfillmentService.FulfillItem(input)
		if err != nil {
			return err
		}
		response, err := json.Marshal(grantEntitlement)
		if err != nil {
			return err
		}
		logrus.Infof("Response: %s", response)
		return nil
	},
}

func init() {
	rootCmd.AddCommand(fulfillItemCmd)
	fulfillItemCmd.Flags().StringP("userId", "u", "", "User ID")
	_ = fulfillItemCmd.MarkFlagRequired("userId")
	fulfillItemCmd.Flags().StringP("itemId", "i", "", "Item ID")
	_ = fulfillItemCmd.MarkFlagRequired("itemId")
	fulfillItemCmd.Flags().Int32P("quantity", "q", 1, "item quantity")
	_ = fulfillItemCmd.MarkFlagRequired("quantity")
	fulfillItemCmd.Flags().StringP("namespace", "", "", "User namespace")
	_ = fulfillItemCmd.MarkFlagRequired("namespace")
}
