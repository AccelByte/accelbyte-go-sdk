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

// UpdateWxPayConfigCmd represents the UpdateWxPayConfig command
var UpdateWxPayConfigCmd = &cobra.Command{
	Use:   "updateWxPayConfig",
	Short: "Update wx pay config",
	Long:  `Update wx pay config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.WxPayConfigRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		id_, _ := cmd.Flags().GetString("id")
		validate, _ := cmd.Flags().GetBool("validate")
		input := &payment_config.UpdateWxPayConfigParams{
			Body:     body,
			ID:       id_,
			Validate: &validate,
		}
		ok, errOK := paymentConfigService.UpdateWxPayConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateWxPayConfigCmd.Flags().String("body", "", "Body")
	_ = UpdateWxPayConfigCmd.MarkFlagRequired("body")
	UpdateWxPayConfigCmd.Flags().String("id", "", "Id")
	_ = UpdateWxPayConfigCmd.MarkFlagRequired("id")
	UpdateWxPayConfigCmd.Flags().Bool("validate", false, "Validate")
}
