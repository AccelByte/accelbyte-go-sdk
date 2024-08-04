// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fulfillment

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

// FulfillItemsCmd represents the FulfillItems command
var FulfillItemsCmd = &cobra.Command{
	Use:   "fulfillItems",
	Short: "Fulfill items",
	Long:  `Fulfill items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		transactionId, _ := cmd.Flags().GetString("transactionId")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.FulfillmentV2Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &fulfillment.FulfillItemsParams{
			Body:          body,
			Namespace:     namespace,
			TransactionID: transactionId,
			UserID:        userId,
		}
		ok, errOK := fulfillmentService.FulfillItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	FulfillItemsCmd.Flags().String("body", "", "Body")
	FulfillItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = FulfillItemsCmd.MarkFlagRequired("namespace")
	FulfillItemsCmd.Flags().String("transactionId", "", "Transaction id")
	_ = FulfillItemsCmd.MarkFlagRequired("transactionId")
	FulfillItemsCmd.Flags().String("userId", "", "User id")
	_ = FulfillItemsCmd.MarkFlagRequired("userId")
}
