// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package certificate

import (
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/certificate"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// HandleUploadXboxPFXCertificateCmd represents the HandleUploadXboxPFXCertificate command
var HandleUploadXboxPFXCertificateCmd = &cobra.Command{
	Use:   "handleUploadXboxPFXCertificate",
	Short: "Handle upload xbox PFX certificate",
	Long:  `Handle upload xbox PFX certificate`,
	RunE: func(cmd *cobra.Command, args []string) error {
		certificateService := &session.CertificateService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		certname, _ := cmd.Flags().GetString("certname")
		outputFile := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", outputFile)
		file, err := os.Open(outputFile)
		if err != nil {
			return err
		}
		password, _ := cmd.Flags().GetString("password")
		namespace, _ := cmd.Flags().GetString("namespace")
		description, _ := cmd.Flags().GetString("description")
		input := &certificate.HandleUploadXboxPFXCertificateParams{
			Description: &description,
			Certname:    certname,
			File:        file,
			Password:    password,
			Namespace:   namespace,
		}
		ok, errOK := certificateService.HandleUploadXboxPFXCertificateShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	HandleUploadXboxPFXCertificateCmd.Flags().String("description", "", "Description")
	HandleUploadXboxPFXCertificateCmd.Flags().String("certname", "", "Certname")
	_ = HandleUploadXboxPFXCertificateCmd.MarkFlagRequired("certname")
	HandleUploadXboxPFXCertificateCmd.Flags().String("file", "", "File")
	_ = HandleUploadXboxPFXCertificateCmd.MarkFlagRequired("file")
	HandleUploadXboxPFXCertificateCmd.Flags().String("password", "", "Password")
	_ = HandleUploadXboxPFXCertificateCmd.MarkFlagRequired("password")
	HandleUploadXboxPFXCertificateCmd.Flags().String("namespace", "", "Namespace")
	_ = HandleUploadXboxPFXCertificateCmd.MarkFlagRequired("namespace")
}
