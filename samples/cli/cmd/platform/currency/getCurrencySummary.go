// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package currency

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/currency"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getCurrencySummaryCmd represents the getCurrencySummary command
var getCurrencySummaryCmd = &cobra.Command{
	Use:   "getCurrencySummary",
	Short: "Get currency summary",
	Long:  `Get currency summary`,
	RunE: func(cmd *cobra.Command, args []string) error {
		currencyService := &platform.CurrencyService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &currency.GetCurrencySummaryParams{
			CurrencyCode: currencyCode,
			Namespace:    namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := currencyService.GetCurrencySummary(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getCurrencySummaryCmd)
	getCurrencySummaryCmd.Flags().StringP("currencyCode", "ce", " ", "Currency code")
	_ = getCurrencySummaryCmd.MarkFlagRequired("currencyCode")
	getCurrencySummaryCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getCurrencySummaryCmd.MarkFlagRequired("namespace")
}
