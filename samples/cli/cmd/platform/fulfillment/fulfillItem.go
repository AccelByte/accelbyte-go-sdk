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

// FulfillItemCmd represents the FulfillItem command
var FulfillItemCmd = &cobra.Command{
	Use:   "fulfillItem",
	Short: "Fulfill item",
	Long:  `Fulfill item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.FulfillmentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &fulfillment.FulfillItemParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := fulfillmentService.FulfillItemShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	FulfillItemCmd.Flags().String("body", "", "Body")
	_ = FulfillItemCmd.MarkFlagRequired("body")
	FulfillItemCmd.Flags().String("namespace", "", "Namespace")
	_ = FulfillItemCmd.MarkFlagRequired("namespace")
	FulfillItemCmd.Flags().String("userId", "", "User id")
	_ = FulfillItemCmd.MarkFlagRequired("userId")
}
