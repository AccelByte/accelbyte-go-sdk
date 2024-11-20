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

// AdminUploadXBoxCertificateCmd represents the AdminUploadXBoxCertificate command
var AdminUploadXBoxCertificateCmd = &cobra.Command{
	Use:   "adminUploadXBoxCertificate",
	Short: "Admin upload X box certificate",
	Long:  `Admin upload X box certificate`,
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
		input := &certificate.AdminUploadXBoxCertificateParams{
			Description: &description,
			Certname:    certname,
			File:        file,
			Password:    password,
			Namespace:   namespace,
		}
		ok, errOK := certificateService.AdminUploadXBoxCertificateShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUploadXBoxCertificateCmd.Flags().String("description", "", "Description")
	AdminUploadXBoxCertificateCmd.Flags().String("certname", "", "Certname")
	_ = AdminUploadXBoxCertificateCmd.MarkFlagRequired("certname")
	AdminUploadXBoxCertificateCmd.Flags().String("file", "", "File")
	_ = AdminUploadXBoxCertificateCmd.MarkFlagRequired("file")
	AdminUploadXBoxCertificateCmd.Flags().String("password", "", "Password")
	_ = AdminUploadXBoxCertificateCmd.MarkFlagRequired("password")
	AdminUploadXBoxCertificateCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUploadXBoxCertificateCmd.MarkFlagRequired("namespace")
}
