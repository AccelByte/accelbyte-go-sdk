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

// BulkFulfillItemsV3Cmd represents the BulkFulfillItemsV3 command
var BulkFulfillItemsV3Cmd = &cobra.Command{
	Use:   "bulkFulfillItemsV3",
	Short: "Bulk fulfill items V3",
	Long:  `Bulk fulfill items V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*platformclientmodels.FulfillmentV3Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &fulfillment.BulkFulfillItemsV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := fulfillmentService.BulkFulfillItemsV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkFulfillItemsV3Cmd.Flags().String("body", "", "Body")
	_ = BulkFulfillItemsV3Cmd.MarkFlagRequired("body")
	BulkFulfillItemsV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = BulkFulfillItemsV3Cmd.MarkFlagRequired("namespace")
	BulkFulfillItemsV3Cmd.Flags().String("userId", "", "User id")
	_ = BulkFulfillItemsV3Cmd.MarkFlagRequired("userId")
}
