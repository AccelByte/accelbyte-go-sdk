// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deletePaymentProviderConfigCmd represents the deletePaymentProviderConfig command
var deletePaymentProviderConfigCmd = &cobra.Command{
	Use:   "deletePaymentProviderConfig",
	Short: "Delete payment provider config",
	Long:  `Delete payment provider config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		input := &payment_config.DeletePaymentProviderConfigParams{
			ID: id_,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := paymentConfigService.DeletePaymentProviderConfig(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deletePaymentProviderConfigCmd)
	deletePaymentProviderConfigCmd.Flags().StringP("id", "i", " ", "Id")
	_ = deletePaymentProviderConfigCmd.MarkFlagRequired("id")
}
