// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package paymentStation

import (
	"bytes"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"io"
	"os"
)

// PublicGetQRCodeCmd represents the PublicGetQRCode command
var PublicGetQRCodeCmd = &cobra.Command{
	Use:   "PublicGetQRCode",
	Short: "Public get QR code",
	Long:  `Public get QR code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		code, _ := cmd.Flags().GetString("code")
		output := cmd.Flag("outputFilePath").Value.String()
		logrus.Infof("Output %v", output)
		file, err := os.Create(output)
		if err != nil {
			return err
		}
		writer := bytes.NewBuffer(nil)
		input := &payment_station.PublicGetQRCodeParams{
			Namespace: namespace,
			Code:      code,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentStationService.PublicGetQRCode(input, writer)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		_, err = io.Copy(file, writer)
		if err != nil {
			return err
		}
		return nil
	},
}

func init() {
	PublicGetQRCodeCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PublicGetQRCodeCmd.MarkFlagRequired("namespace")
	PublicGetQRCodeCmd.Flags().StringP("code", "ce", " ", "Code")
	_ = PublicGetQRCodeCmd.MarkFlagRequired("code")
}
