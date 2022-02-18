// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package currency

import (
	"encoding/json"
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
		input := &currency.PublicListCurrenciesParams{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := currencyService.PublicListCurrencies(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	PublicListCurrenciesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicListCurrenciesCmd.MarkFlagRequired("namespace")
}
