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

// CheckServerArtifactCmd represents the CheckServerArtifact command
var CheckServerArtifactCmd = &cobra.Command{
	Use:   "checkServerArtifact",
	Short: "Check server artifact",
	Long:  `Check server artifact`,
	RunE: func(cmd *cobra.Command, args []string) error {
		downloadServerArtifactService := &dsartifact.DownloadServerArtifactService{
			Client:          factory.NewDsartifactClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		podName, _ := cmd.Flags().GetString("podName")
		input := &download_server_artifact.CheckServerArtifactParams{
			Namespace: namespace,
			PodName:   podName,
		}
		ok, errOK := downloadServerArtifactService.CheckServerArtifactShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CheckServerArtifactCmd.Flags().String("namespace", "", "Namespace")
	_ = CheckServerArtifactCmd.MarkFlagRequired("namespace")
	CheckServerArtifactCmd.Flags().String("podName", "", "Pod name")
	_ = CheckServerArtifactCmd.MarkFlagRequired("podName")
}
