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

// UpdateXsollaConfigCmd represents the UpdateXsollaConfig command
var UpdateXsollaConfigCmd = &cobra.Command{
	Use:   "updateXsollaConfig",
	Short: "Update xsolla config",
	Long:  `Update xsolla config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.XsollaConfig
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		id_, _ := cmd.Flags().GetString("id")
		validate, _ := cmd.Flags().GetBool("validate")
		input := &payment_config.UpdateXsollaConfigParams{
			Body:     body,
			ID:       id_,
			Validate: &validate,
		}
		ok, errOK := paymentConfigService.UpdateXsollaConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateXsollaConfigCmd.Flags().String("body", "", "Body")
	_ = UpdateXsollaConfigCmd.MarkFlagRequired("body")
	UpdateXsollaConfigCmd.Flags().String("id", "", "Id")
	_ = UpdateXsollaConfigCmd.MarkFlagRequired("id")
	UpdateXsollaConfigCmd.Flags().Bool("validate", false, "Validate")
}
