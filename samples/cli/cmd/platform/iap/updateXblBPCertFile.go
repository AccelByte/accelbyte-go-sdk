// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateXblBPCertFileCmd represents the UpdateXblBPCertFile command
var UpdateXblBPCertFileCmd = &cobra.Command{
	Use:   "updateXblBPCertFile",
	Short: "Update xbl BP cert file",
	Long:  `Update xbl BP cert file`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		outputFile := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", outputFile)
		file, err := os.Open(outputFile)
		if err != nil {
			return err
		}
		password, _ := cmd.Flags().GetString("password")
		input := &iap.UpdateXblBPCertFileParams{
			File:      file,
			Password:  &password,
			Namespace: namespace,
		}
		ok, errOK := iapService.UpdateXblBPCertFileShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateXblBPCertFileCmd.Flags().String("file", "", "File")
	UpdateXblBPCertFileCmd.Flags().String("password", "", "Password")
	UpdateXblBPCertFileCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateXblBPCertFileCmd.MarkFlagRequired("namespace")
}
