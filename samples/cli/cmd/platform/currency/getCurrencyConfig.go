// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package currency

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/currency"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetCurrencyConfigCmd represents the GetCurrencyConfig command
var GetCurrencyConfigCmd = &cobra.Command{
	Use:   "getCurrencyConfig",
	Short: "Get currency config",
	Long:  `Get currency config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		currencyService := &platform.CurrencyService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &currency.GetCurrencyConfigParams{
			CurrencyCode: currencyCode,
			Namespace:    namespace,
		}
		ok, errOK := currencyService.GetCurrencyConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetCurrencyConfigCmd.Flags().String("currencyCode", "", "Currency code")
	_ = GetCurrencyConfigCmd.MarkFlagRequired("currencyCode")
	GetCurrencyConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetCurrencyConfigCmd.MarkFlagRequired("namespace")
}
