// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentConfig

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateStripeConfigCmd represents the UpdateStripeConfig command
var UpdateStripeConfigCmd = &cobra.Command{
	Use:   "updateStripeConfig",
	Short: "Update stripe config",
	Long:  `Update stripe config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.StripeConfig
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		id_, _ := cmd.Flags().GetString("id")
		sandbox, _ := cmd.Flags().GetBool("sandbox")
		validate, _ := cmd.Flags().GetBool("validate")
		input := &payment_config.UpdateStripeConfigParams{
			Body:     body,
			ID:       id_,
			Sandbox:  &sandbox,
			Validate: &validate,
		}
		ok, errOK := paymentConfigService.UpdateStripeConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateStripeConfigCmd.Flags().String("body", "", "Body")
	_ = UpdateStripeConfigCmd.MarkFlagRequired("body")
	UpdateStripeConfigCmd.Flags().String("id", "", "Id")
	_ = UpdateStripeConfigCmd.MarkFlagRequired("id")
	UpdateStripeConfigCmd.Flags().Bool("sandbox", false, "Sandbox")
	UpdateStripeConfigCmd.Flags().Bool("validate", false, "Validate")
}
