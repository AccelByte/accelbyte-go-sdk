// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package paymentConfig

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updatePaymentProviderConfigCmd represents the updatePaymentProviderConfig command
var updatePaymentProviderConfigCmd = &cobra.Command{
	Use:   "updatePaymentProviderConfig",
	Short: "Update payment provider config",
	Long:  `Update payment provider config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PaymentProviderConfigEdit
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &payment_config.UpdatePaymentProviderConfigParams{
			Body: body,
			ID:   id_,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentConfigService.UpdatePaymentProviderConfig(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updatePaymentProviderConfigCmd)
	updatePaymentProviderConfigCmd.Flags().StringP("body", "by", " ", "Body")
	updatePaymentProviderConfigCmd.Flags().StringP("id", "id", " ", "Id")
	_ = updatePaymentProviderConfigCmd.MarkFlagRequired("id")
}
