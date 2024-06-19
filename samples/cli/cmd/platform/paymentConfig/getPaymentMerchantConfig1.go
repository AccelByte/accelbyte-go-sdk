// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPaymentMerchantConfig1Cmd represents the GetPaymentMerchantConfig1 command
var GetPaymentMerchantConfig1Cmd = &cobra.Command{
	Use:   "getPaymentMerchantConfig1",
	Short: "Get payment merchant config 1",
	Long:  `Get payment merchant config 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		input := &payment_config.GetPaymentMerchantConfig1Params{
			ID: id_,
		}
		ok, errOK := paymentConfigService.GetPaymentMerchantConfig1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetPaymentMerchantConfig1Cmd.Flags().String("id", "", "Id")
	_ = GetPaymentMerchantConfig1Cmd.MarkFlagRequired("id")
}
