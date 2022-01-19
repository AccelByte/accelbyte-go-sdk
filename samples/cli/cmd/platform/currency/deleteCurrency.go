// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/currency"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteCurrencyCmd represents the deleteCurrency command
var deleteCurrencyCmd = &cobra.Command{
	Use:   "deleteCurrency",
	Short: "Delete currency",
	Long:  `Delete currency`,
	RunE: func(cmd *cobra.Command, args []string) error {
		currencyService := &platform.CurrencyService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &currency.DeleteCurrencyParams{
			CurrencyCode: currencyCode,
			Namespace:    namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := currencyService.DeleteCurrency(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteCurrencyCmd)
	deleteCurrencyCmd.Flags().StringP("currencyCode", "c", " ", "Currency code")
	_ = deleteCurrencyCmd.MarkFlagRequired("currencyCode")
	deleteCurrencyCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteCurrencyCmd.MarkFlagRequired("namespace")
}
