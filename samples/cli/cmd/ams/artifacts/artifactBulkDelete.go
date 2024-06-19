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

// ArtifactBulkDeleteCmd represents the ArtifactBulkDelete command
var ArtifactBulkDeleteCmd = &cobra.Command{
	Use:   "artifactBulkDelete",
	Short: "Artifact bulk delete",
	Long:  `Artifact bulk delete`,
	RunE: func(cmd *cobra.Command, args []string) error {
		artifactsService := &ams.ArtifactsService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		artifactType, _ := cmd.Flags().GetString("artifactType")
		fleetId, _ := cmd.Flags().GetString("fleetId")
		uploadedBefore, _ := cmd.Flags().GetString("uploadedBefore")
		input := &artifacts.ArtifactBulkDeleteParams{
			Namespace:      namespace,
			ArtifactType:   &artifactType,
			FleetID:        &fleetId,
			UploadedBefore: &uploadedBefore,
		}
		errAccepted := artifactsService.ArtifactBulkDeleteShort(input)
		if errAccepted != nil {
			logrus.Error(errAccepted)

			return errAccepted
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	ArtifactBulkDeleteCmd.Flags().String("namespace", "", "Namespace")
	_ = ArtifactBulkDeleteCmd.MarkFlagRequired("namespace")
	ArtifactBulkDeleteCmd.Flags().String("artifactType", "", "Artifact type")
	ArtifactBulkDeleteCmd.Flags().String("fleetId", "", "Fleet id")
	ArtifactBulkDeleteCmd.Flags().String("uploadedBefore", "", "Uploaded before")
}
