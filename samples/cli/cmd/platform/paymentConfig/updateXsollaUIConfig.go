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

// UpdateXsollaUIConfigCmd represents the UpdateXsollaUIConfig command
var UpdateXsollaUIConfigCmd = &cobra.Command{
	Use:   "updateXsollaUIConfig",
	Short: "Update xsolla UI config",
	Long:  `Update xsolla UI config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.XsollaPaywallConfigRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &payment_config.UpdateXsollaUIConfigParams{
			Body: body,
			ID:   id_,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentConfigService.UpdateXsollaUIConfig(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	UpdateXsollaUIConfigCmd.Flags().StringP("body", "", "", "Body")
	UpdateXsollaUIConfigCmd.Flags().StringP("id", "", "", "Id")
	_ = UpdateXsollaUIConfigCmd.MarkFlagRequired("id")
}
