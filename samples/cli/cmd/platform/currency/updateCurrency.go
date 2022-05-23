// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package currency

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/currency"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateCurrencyCmd represents the UpdateCurrency command
var UpdateCurrencyCmd = &cobra.Command{
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
		ok, err := currencyService.UpdateCurrencyShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	UpdateCurrencyCmd.Flags().String("body", "", "Body")
	UpdateCurrencyCmd.Flags().String("currencyCode", "", "Currency code")
	_ = UpdateCurrencyCmd.MarkFlagRequired("currencyCode")
	UpdateCurrencyCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateCurrencyCmd.MarkFlagRequired("namespace")
}
