// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package appUI

import (
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/app_ui"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UploadAppUIFileCmd represents the UploadAppUIFile command
var UploadAppUIFileCmd = &cobra.Command{
	Use:   "uploadAppUIFile",
	Short: "Upload app UI file",
	Long:  `Upload app UI file`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appUIService := &csm.AppUIService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		outputFile := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", outputFile)
		file, err := os.Open(outputFile)
		if err != nil {
			return err
		}
		appUiName, _ := cmd.Flags().GetString("appUiName")
		namespace, _ := cmd.Flags().GetString("namespace")
		version, _ := cmd.Flags().GetString("version")
		input := &app_ui.UploadAppUIFileParams{
			File:      file,
			AppUIName: appUiName,
			Namespace: namespace,
			Version:   &version,
		}
		ok, errOK := appUIService.UploadAppUIFileShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UploadAppUIFileCmd.Flags().String("file", "", "File")
	_ = UploadAppUIFileCmd.MarkFlagRequired("file")
	UploadAppUIFileCmd.Flags().String("appUiName", "", "App ui name")
	_ = UploadAppUIFileCmd.MarkFlagRequired("appUiName")
	UploadAppUIFileCmd.Flags().String("namespace", "", "Namespace")
	_ = UploadAppUIFileCmd.MarkFlagRequired("namespace")
	UploadAppUIFileCmd.Flags().String("version", "", "Version")
}
