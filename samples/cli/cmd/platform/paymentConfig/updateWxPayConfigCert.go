// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentConfig

import (
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateWxPayConfigCertCmd represents the UpdateWxPayConfigCert command
var UpdateWxPayConfigCertCmd = &cobra.Command{
	Use:   "updateWxPayConfigCert",
	Short: "Update wx pay config cert",
	Long:  `Update wx pay config cert`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		outputFile := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", outputFile)
		file, err := os.Open(outputFile)
		if err != nil {
			return err
		}
		input := &payment_config.UpdateWxPayConfigCertParams{
			File: file,
			ID:   id_,
		}
		ok, errOK := paymentConfigService.UpdateWxPayConfigCertShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateWxPayConfigCertCmd.Flags().String("file", "", "File")
	UpdateWxPayConfigCertCmd.Flags().String("id", "", "Id")
	_ = UpdateWxPayConfigCertCmd.MarkFlagRequired("id")
}
