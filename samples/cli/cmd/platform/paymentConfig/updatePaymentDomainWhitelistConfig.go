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

// UpdatePaymentDomainWhitelistConfigCmd represents the UpdatePaymentDomainWhitelistConfig command
var UpdatePaymentDomainWhitelistConfigCmd = &cobra.Command{
	Use:   "updatePaymentDomainWhitelistConfig",
	Short: "Update payment domain whitelist config",
	Long:  `Update payment domain whitelist config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PaymentDomainWhitelistConfigEdit
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &payment_config.UpdatePaymentDomainWhitelistConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := paymentConfigService.UpdatePaymentDomainWhitelistConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdatePaymentDomainWhitelistConfigCmd.Flags().String("body", "", "Body")
	_ = UpdatePaymentDomainWhitelistConfigCmd.MarkFlagRequired("body")
	UpdatePaymentDomainWhitelistConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdatePaymentDomainWhitelistConfigCmd.MarkFlagRequired("namespace")
}
