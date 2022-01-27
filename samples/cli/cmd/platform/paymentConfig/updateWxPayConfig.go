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
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateWxPayConfigCmd represents the UpdateWxPayConfig command
var UpdateWxPayConfigCmd = &cobra.Command{
	Use:   "UpdateWxPayConfig",
	Short: "Update wx pay config",
	Long:  `Update wx pay config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.WxPayConfigRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		validate, _ := cmd.Flags().GetBool("validate")
		input := &payment_config.UpdateWxPayConfigParams{
			Body:     body,
			ID:       id_,
			Validate: &validate,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentConfigService.UpdateWxPayConfig(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	UpdateWxPayConfigCmd.Flags().StringP("body", "by", " ", "Body")
	UpdateWxPayConfigCmd.Flags().StringP("id", "id", " ", "Id")
	_ = UpdateWxPayConfigCmd.MarkFlagRequired("id")
	UpdateWxPayConfigCmd.Flags().BoolP("validate", "ve", false, "Validate")
}
