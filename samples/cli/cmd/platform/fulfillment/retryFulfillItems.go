// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fulfillment

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetryFulfillItemsCmd represents the RetryFulfillItems command
var RetryFulfillItemsCmd = &cobra.Command{
	Use:   "retryFulfillItems",
	Short: "Retry fulfill items",
	Long:  `Retry fulfill items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		transactionId, _ := cmd.Flags().GetString("transactionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &fulfillment.RetryFulfillItemsParams{
			Namespace:     namespace,
			TransactionID: transactionId,
			UserID:        userId,
		}
		ok, errOK := fulfillmentService.RetryFulfillItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetryFulfillItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = RetryFulfillItemsCmd.MarkFlagRequired("namespace")
	RetryFulfillItemsCmd.Flags().String("transactionId", "", "Transaction id")
	_ = RetryFulfillItemsCmd.MarkFlagRequired("transactionId")
	RetryFulfillItemsCmd.Flags().String("userId", "", "User id")
	_ = RetryFulfillItemsCmd.MarkFlagRequired("userId")
}
