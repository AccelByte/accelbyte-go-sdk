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

// RetryFulfillItemsV3Cmd represents the RetryFulfillItemsV3 command
var RetryFulfillItemsV3Cmd = &cobra.Command{
	Use:   "retryFulfillItemsV3",
	Short: "Retry fulfill items V3",
	Long:  `Retry fulfill items V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		transactionId, _ := cmd.Flags().GetString("transactionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &fulfillment.RetryFulfillItemsV3Params{
			Namespace:     namespace,
			TransactionID: transactionId,
			UserID:        userId,
		}
		ok, errOK := fulfillmentService.RetryFulfillItemsV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetryFulfillItemsV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetryFulfillItemsV3Cmd.MarkFlagRequired("namespace")
	RetryFulfillItemsV3Cmd.Flags().String("transactionId", "", "Transaction id")
	_ = RetryFulfillItemsV3Cmd.MarkFlagRequired("transactionId")
	RetryFulfillItemsV3Cmd.Flags().String("userId", "", "User id")
	_ = RetryFulfillItemsV3Cmd.MarkFlagRequired("userId")
}
