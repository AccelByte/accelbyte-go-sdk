// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

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

// updatePayPalConfigCmd represents the updatePayPalConfig command
var updatePayPalConfigCmd = &cobra.Command{
	Use:   "updatePayPalConfig",
	Short: "Update pay pal config",
	Long:  `Update pay pal config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PayPalConfig
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		sandbox, _ := cmd.Flags().GetBool("sandbox")
		validate, _ := cmd.Flags().GetBool("validate")
		input := &payment_config.UpdatePayPalConfigParams{
			Body:     body,
			ID:       id_,
			Sandbox:  &sandbox,
			Validate: &validate,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentConfigService.UpdatePayPalConfig(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updatePayPalConfigCmd)
	updatePayPalConfigCmd.Flags().StringP("body", "b", " ", "Body")
	updatePayPalConfigCmd.Flags().StringP("id", "i", " ", "Id")
	_ = updatePayPalConfigCmd.MarkFlagRequired("id")
	updatePayPalConfigCmd.Flags().BoolP("sandbox", "s", false, "Sandbox")
	updatePayPalConfigCmd.Flags().BoolP("validate", "v", false, "Validate")
}
