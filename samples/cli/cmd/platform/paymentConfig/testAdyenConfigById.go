// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package paymentConfig

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// TestAdyenConfigByIdCmd represents the TestAdyenConfigById command
var TestAdyenConfigByIdCmd = &cobra.Command{
	Use:   "testAdyenConfigById",
	Short: "Test adyen config by id",
	Long:  `Test adyen config by id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		sandbox, _ := cmd.Flags().GetBool("sandbox")
		input := &payment_config.TestAdyenConfigByIDParams{
			ID:      id_,
			Sandbox: &sandbox,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentConfigService.TestAdyenConfigByID(input)
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
	TestAdyenConfigByIdCmd.Flags().StringP("id", "", "", "Id")
	_ = TestAdyenConfigByIdCmd.MarkFlagRequired("id")
	TestAdyenConfigByIdCmd.Flags().BoolP("sandbox", "", false, "Sandbox")
}
