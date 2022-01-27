// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package currency

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/currency"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateCurrencyCmd represents the updateCurrency command
var updateCurrencyCmd = &cobra.Command{
	Use:   "updateCurrency",
	Short: "Update currency",
	Long:  `Update currency`,
	RunE: func(cmd *cobra.Command, args []string) error {
		currencyService := &platform.CurrencyService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CurrencyUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &currency.UpdateCurrencyParams{
			Body:         body,
			CurrencyCode: currencyCode,
			Namespace:    namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := currencyService.UpdateCurrency(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateCurrencyCmd)
	updateCurrencyCmd.Flags().StringP("body", "by", " ", "Body")
	updateCurrencyCmd.Flags().StringP("currencyCode", "ce", " ", "Currency code")
	_ = updateCurrencyCmd.MarkFlagRequired("currencyCode")
	updateCurrencyCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = updateCurrencyCmd.MarkFlagRequired("namespace")
}
