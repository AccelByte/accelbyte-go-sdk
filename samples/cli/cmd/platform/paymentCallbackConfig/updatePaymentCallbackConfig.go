// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_callback_config"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updatePaymentCallbackConfigCmd represents the updatePaymentCallbackConfig command
var updatePaymentCallbackConfigCmd = &cobra.Command{
	Use:   "updatePaymentCallbackConfig",
	Short: "Update payment callback config",
	Long:  `Update payment callback config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentCallbackConfigService := &platform.PaymentCallbackConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PaymentCallbackConfigUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &payment_callback_config.UpdatePaymentCallbackConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentCallbackConfigService.UpdatePaymentCallbackConfig(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updatePaymentCallbackConfigCmd)
	updatePaymentCallbackConfigCmd.Flags().StringP("body", "b", " ", "Body")
	updatePaymentCallbackConfigCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updatePaymentCallbackConfigCmd.MarkFlagRequired("namespace")
}
