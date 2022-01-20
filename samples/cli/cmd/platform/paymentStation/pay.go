// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// payCmd represents the pay command
var payCmd = &cobra.Command{
	Use:   "pay",
	Short: "Pay",
	Long:  `Pay`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PaymentToken
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		paymentProvider, _ := cmd.Flags().GetString("paymentProvider")
		zipCode, _ := cmd.Flags().GetString("zipCode")
		input := &payment_station.PayParams{
			Body:            body,
			Namespace:       namespace,
			PaymentOrderNo:  paymentOrderNo,
			PaymentProvider: &paymentProvider,
			ZipCode:         &zipCode,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentStationService.Pay(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(payCmd)
	payCmd.Flags().StringP("body", "b", " ", "Body")
	payCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = payCmd.MarkFlagRequired("namespace")
	payCmd.Flags().StringP("paymentOrderNo", "p", " ", "Payment order no")
	_ = payCmd.MarkFlagRequired("paymentOrderNo")
	payCmd.Flags().StringP("paymentProvider", "p", " ", "Payment provider")
	payCmd.Flags().StringP("zipCode", "z", " ", "Zip code")
}