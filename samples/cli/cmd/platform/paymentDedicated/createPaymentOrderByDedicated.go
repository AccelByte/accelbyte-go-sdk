// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentDedicated

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_dedicated"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreatePaymentOrderByDedicatedCmd represents the CreatePaymentOrderByDedicated command
var CreatePaymentOrderByDedicatedCmd = &cobra.Command{
	Use:   "createPaymentOrderByDedicated",
	Short: "Create payment order by dedicated",
	Long:  `Create payment order by dedicated`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentDedicatedService := &platform.PaymentDedicatedService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.ExternalPaymentOrderCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &payment_dedicated.CreatePaymentOrderByDedicatedParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := paymentDedicatedService.CreatePaymentOrderByDedicatedShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreatePaymentOrderByDedicatedCmd.Flags().String("body", "", "Body")
	_ = CreatePaymentOrderByDedicatedCmd.MarkFlagRequired("body")
	CreatePaymentOrderByDedicatedCmd.Flags().String("namespace", "", "Namespace")
	_ = CreatePaymentOrderByDedicatedCmd.MarkFlagRequired("namespace")
}
