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

// FulfillItemsV3Cmd represents the FulfillItemsV3 command
var FulfillItemsV3Cmd = &cobra.Command{
	Use:   "fulfillItemsV3",
	Short: "Fulfill items V3",
	Long:  `Fulfill items V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.FulfillmentV2Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		transactionId, _ := cmd.Flags().GetString("transactionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &fulfillment.FulfillItemsV3Params{
			Body:          body,
			Namespace:     namespace,
			TransactionID: transactionId,
			UserID:        userId,
		}
		ok, errOK := fulfillmentService.FulfillItemsV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	FulfillItemsV3Cmd.Flags().String("body", "", "Body")
	_ = FulfillItemsV3Cmd.MarkFlagRequired("body")
	FulfillItemsV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = FulfillItemsV3Cmd.MarkFlagRequired("namespace")
	FulfillItemsV3Cmd.Flags().String("transactionId", "", "Transaction id")
	_ = FulfillItemsV3Cmd.MarkFlagRequired("transactionId")
	FulfillItemsV3Cmd.Flags().String("userId", "", "User id")
	_ = FulfillItemsV3Cmd.MarkFlagRequired("userId")
}
