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

// ListCurrenciesCmd represents the ListCurrencies command
var ListCurrenciesCmd = &cobra.Command{
	Use:   "listCurrencies",
	Short: "List currencies",
	Long:  `List currencies`,
	RunE: func(cmd *cobra.Command, args []string) error {
		currencyService := &platform.CurrencyService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		currencyType, _ := cmd.Flags().GetString("currencyType")
		input := &currency.ListCurrenciesParams{
			Namespace:    namespace,
			CurrencyType: &currencyType,
		}
		ok, errOK := currencyService.ListCurrenciesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListCurrenciesCmd.Flags().String("namespace", "", "Namespace")
	_ = ListCurrenciesCmd.MarkFlagRequired("namespace")
	ListCurrenciesCmd.Flags().String("currencyType", "", "Currency type")
}
