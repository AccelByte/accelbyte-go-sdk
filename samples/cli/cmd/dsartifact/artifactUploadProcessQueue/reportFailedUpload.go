// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package artifactUploadProcessQueue

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclient/artifact_upload_process_queue"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsartifact"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ReportFailedUploadCmd represents the ReportFailedUpload command
var ReportFailedUploadCmd = &cobra.Command{
	Use:   "reportFailedUpload",
	Short: "Report failed upload",
	Long:  `Report failed upload`,
	RunE: func(cmd *cobra.Command, args []string) error {
		artifactUploadProcessQueueService := &dsartifact.ArtifactUploadProcessQueueService{
			Client:          factory.NewDsartifactClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		nodeIP, _ := cmd.Flags().GetString("nodeIP")
		podName, _ := cmd.Flags().GetString("podName")
		input := &artifact_upload_process_queue.ReportFailedUploadParams{
			NodeIP:  nodeIP,
			PodName: podName,
		}
		errNoContent := artifactUploadProcessQueueService.ReportFailedUploadShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	ReportFailedUploadCmd.Flags().String("nodeIP", "", "Node IP")
	_ = ReportFailedUploadCmd.MarkFlagRequired("nodeIP")
	ReportFailedUploadCmd.Flags().String("podName", "", "Pod name")
	_ = ReportFailedUploadCmd.MarkFlagRequired("podName")
}
