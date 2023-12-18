// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package artifacts

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/artifacts"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ArtifactGetURLCmd represents the ArtifactGetURL command
var ArtifactGetURLCmd = &cobra.Command{
	Use:   "artifactGetURL",
	Short: "Artifact get URL",
	Long:  `Artifact get URL`,
	RunE: func(cmd *cobra.Command, args []string) error {
		artifactsService := &ams.ArtifactsService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		artifactID, _ := cmd.Flags().GetString("artifactID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &artifacts.ArtifactGetURLParams{
			ArtifactID: artifactID,
			Namespace:  namespace,
		}
		ok, errOK := artifactsService.ArtifactGetURLShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ArtifactGetURLCmd.Flags().String("artifactID", "", "Artifact ID")
	_ = ArtifactGetURLCmd.MarkFlagRequired("artifactID")
	ArtifactGetURLCmd.Flags().String("namespace", "", "Namespace")
	_ = ArtifactGetURLCmd.MarkFlagRequired("namespace")
}
