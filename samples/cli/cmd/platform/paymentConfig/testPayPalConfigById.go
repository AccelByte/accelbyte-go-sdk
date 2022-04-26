// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// TestPayPalConfigByIdCmd represents the TestPayPalConfigById command
var TestPayPalConfigByIdCmd = &cobra.Command{
	Use:   "testPayPalConfigById",
	Short: "Test pay pal config by id",
	Long:  `Test pay pal config by id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		sandbox, _ := cmd.Flags().GetBool("sandbox")
		input := &payment_config.TestPayPalConfigByIDParams{
			ID:      id_,
			Sandbox: &sandbox,
		}
		ok, err := paymentConfigService.TestPayPalConfigByIDShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	TestPayPalConfigByIdCmd.Flags().StringP("id", "", "", "Id")
	_ = TestPayPalConfigByIdCmd.MarkFlagRequired("id")
	TestPayPalConfigByIdCmd.Flags().BoolP("sandbox", "", false, "Sandbox")
}
