// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package paymentConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"os"
)

// updateWxPayConfigCertCmd represents the updateWxPayConfigCert command
var updateWxPayConfigCertCmd = &cobra.Command{
	Use:   "updateWxPayConfigCert",
	Short: "Update wx pay config cert",
	Long:  `Update wx pay config cert`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		output := cmd.Flag("outputFilePath").Value.String()
		logrus.Infof("Output %v", output)
		file, err := os.Create(output)
		if err != nil {
			return err
		}
		input := &payment_config.UpdateWxPayConfigCertParams{
			File: file,
			ID:   id_,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentConfigService.UpdateWxPayConfigCert(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateWxPayConfigCertCmd)
	updateWxPayConfigCertCmd.Flags().StringP("file", "fe", " ", "File")
	updateWxPayConfigCertCmd.Flags().StringP("id", "id", " ", "Id")
	_ = updateWxPayConfigCertCmd.MarkFlagRequired("id")
}
