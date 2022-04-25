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

// TestAliPayConfigByIdCmd represents the TestAliPayConfigById command
var TestAliPayConfigByIdCmd = &cobra.Command{
	Use:   "testAliPayConfigById",
	Short: "Test ali pay config by id",
	Long:  `Test ali pay config by id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		sandbox, _ := cmd.Flags().GetBool("sandbox")
		input := &payment_config.TestAliPayConfigByIDParams{
			ID:      id_,
			Sandbox: &sandbox,
		}
		ok, err := paymentConfigService.TestAliPayConfigByIDShort(input, nil)
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
	TestAliPayConfigByIdCmd.Flags().StringP("id", "", "", "Id")
	_ = TestAliPayConfigByIdCmd.MarkFlagRequired("id")
	TestAliPayConfigByIdCmd.Flags().BoolP("sandbox", "", false, "Sandbox")
}
