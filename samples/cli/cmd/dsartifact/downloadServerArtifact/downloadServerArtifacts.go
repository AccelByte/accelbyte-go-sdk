// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package downloadServerArtifact

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclient/download_server_artifact"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsartifact"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DownloadServerArtifactsCmd represents the DownloadServerArtifacts command
var DownloadServerArtifactsCmd = &cobra.Command{
	Use:   "downloadServerArtifacts",
	Short: "Download server artifacts",
	Long:  `Download server artifacts`,
	RunE: func(cmd *cobra.Command, args []string) error {
		downloadServerArtifactService := &dsartifact.DownloadServerArtifactService{
			Client:          factory.NewDsartifactClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		podName, _ := cmd.Flags().GetString("podName")
		input := &download_server_artifact.DownloadServerArtifactsParams{
			Namespace: namespace,
			PodName:   podName,
		}
		errOK := downloadServerArtifactService.DownloadServerArtifactsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DownloadServerArtifactsCmd.Flags().String("namespace", "", "Namespace")
	_ = DownloadServerArtifactsCmd.MarkFlagRequired("namespace")
	DownloadServerArtifactsCmd.Flags().String("podName", "", "Pod name")
	_ = DownloadServerArtifactsCmd.MarkFlagRequired("podName")
}
