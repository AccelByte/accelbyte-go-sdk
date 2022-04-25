// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentCallbackConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_callback_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPaymentCallbackConfigCmd represents the GetPaymentCallbackConfig command
var GetPaymentCallbackConfigCmd = &cobra.Command{
	Use:   "getPaymentCallbackConfig",
	Short: "Get payment callback config",
	Long:  `Get payment callback config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentCallbackConfigService := &platform.PaymentCallbackConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &payment_callback_config.GetPaymentCallbackConfigParams{
			Namespace: namespace,
		}
		ok, err := paymentCallbackConfigService.GetPaymentCallbackConfigShort(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetPaymentCallbackConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetPaymentCallbackConfigCmd.MarkFlagRequired("namespace")
}
