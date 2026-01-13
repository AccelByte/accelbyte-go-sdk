// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformCredential

import (
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/platform_credential"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUploadPlatformCredentialsCmd represents the AdminUploadPlatformCredentials command
var AdminUploadPlatformCredentialsCmd = &cobra.Command{
	Use:   "adminUploadPlatformCredentials",
	Short: "Admin upload platform credentials",
	Long:  `Admin upload platform credentials`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformCredentialService := &session.PlatformCredentialService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		outputFile := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", outputFile)
		file, err := os.Open(outputFile)
		if err != nil {
			return err
		}
		password, _ := cmd.Flags().GetString("password")
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		description, _ := cmd.Flags().GetString("description")
		input := &platform_credential.AdminUploadPlatformCredentialsParams{
			Description: &description,
			File:        file,
			Password:    password,
			Namespace:   namespace,
			PlatformID:  platformId,
		}
		errOK := platformCredentialService.AdminUploadPlatformCredentialsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminUploadPlatformCredentialsCmd.Flags().String("description", "", "Description")
	AdminUploadPlatformCredentialsCmd.Flags().String("file", "", "File")
	_ = AdminUploadPlatformCredentialsCmd.MarkFlagRequired("file")
	AdminUploadPlatformCredentialsCmd.Flags().String("password", "", "Password")
	_ = AdminUploadPlatformCredentialsCmd.MarkFlagRequired("password")
	AdminUploadPlatformCredentialsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUploadPlatformCredentialsCmd.MarkFlagRequired("namespace")
	AdminUploadPlatformCredentialsCmd.Flags().String("platformId", "", "Platform id")
	_ = AdminUploadPlatformCredentialsCmd.MarkFlagRequired("platformId")
}
