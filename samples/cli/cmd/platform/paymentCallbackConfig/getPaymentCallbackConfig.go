// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_callback_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getPaymentCallbackConfigCmd represents the getPaymentCallbackConfig command
var getPaymentCallbackConfigCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentCallbackConfigService.GetPaymentCallbackConfig(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getPaymentCallbackConfigCmd)
	getPaymentCallbackConfigCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getPaymentCallbackConfigCmd.MarkFlagRequired("namespace")
}
