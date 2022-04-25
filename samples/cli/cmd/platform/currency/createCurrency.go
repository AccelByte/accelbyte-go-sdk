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

// CreateCurrencyCmd represents the CreateCurrency command
var CreateCurrencyCmd = &cobra.Command{
	Use:   "createCurrency",
	Short: "Create currency",
	Long:  `Create currency`,
	RunE: func(cmd *cobra.Command, args []string) error {
		currencyService := &platform.CurrencyService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CurrencyCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &currency.CreateCurrencyParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := currencyService.CreateCurrencyShort(input, nil)
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
	CreateCurrencyCmd.Flags().StringP("body", "", "", "Body")
	CreateCurrencyCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateCurrencyCmd.MarkFlagRequired("namespace")
}
