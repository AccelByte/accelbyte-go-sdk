// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentStation

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PayCmd represents the Pay command
var PayCmd = &cobra.Command{
	Use:   "pay",
	Short: "Pay",
	Long:  `Pay`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PaymentToken
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		paymentProvider, _ := cmd.Flags().GetString("paymentProvider")
		zipCode, _ := cmd.Flags().GetString("zipCode")
		input := &payment_station.PayParams{
			Body:            body,
			Namespace:       namespace,
			PaymentOrderNo:  paymentOrderNo,
			PaymentProvider: &paymentProvider,
			ZipCode:         &zipCode,
		}
		ok, errOK := paymentStationService.PayShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PayCmd.Flags().String("body", "", "Body")
	_ = PayCmd.MarkFlagRequired("body")
	PayCmd.Flags().String("namespace", "", "Namespace")
	_ = PayCmd.MarkFlagRequired("namespace")
	PayCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	_ = PayCmd.MarkFlagRequired("paymentOrderNo")
	PayCmd.Flags().String("paymentProvider", "", "Payment provider")
	PayCmd.Flags().String("zipCode", "", "Zip code")
}
