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

// PublicListCurrenciesCmd represents the PublicListCurrencies command
var PublicListCurrenciesCmd = &cobra.Command{
	Use:   "publicListCurrencies",
	Short: "Public list currencies",
	Long:  `Public list currencies`,
	RunE: func(cmd *cobra.Command, args []string) error {
		currencyService := &platform.CurrencyService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		currencyType, _ := cmd.Flags().GetString("currencyType")
		input := &currency.PublicListCurrenciesParams{
			Namespace:    namespace,
			CurrencyType: &currencyType,
		}
		ok, errOK := currencyService.PublicListCurrenciesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListCurrenciesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListCurrenciesCmd.MarkFlagRequired("namespace")
	PublicListCurrenciesCmd.Flags().String("currencyType", "", "Currency type")
}
