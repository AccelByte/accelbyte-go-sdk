// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package paymentConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryPaymentProviderConfigCmd represents the QueryPaymentProviderConfig command
var QueryPaymentProviderConfigCmd = &cobra.Command{
	Use:   "QueryPaymentProviderConfig",
	Short: "Query payment provider config",
	Long:  `Query payment provider config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		limit, _ := cmd.Flags().GetInt32("limit")
		namespace, _ := cmd.Flags().GetString("namespace")
		offset, _ := cmd.Flags().GetInt32("offset")
		region, _ := cmd.Flags().GetString("region")
		input := &payment_config.QueryPaymentProviderConfigParams{
			Limit:     &limit,
			Namespace: &namespace,
			Offset:    &offset,
			Region:    &region,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentConfigService.QueryPaymentProviderConfig(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	QueryPaymentProviderConfigCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	QueryPaymentProviderConfigCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	QueryPaymentProviderConfigCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	QueryPaymentProviderConfigCmd.Flags().StringP("region", "rn", " ", "Region")
}
