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

// DeleteQueueCmd represents the DeleteQueue command
var DeleteQueueCmd = &cobra.Command{
	Use:   "deleteQueue",
	Short: "Delete queue",
	Long:  `Delete queue`,
	RunE: func(cmd *cobra.Command, args []string) error {
		artifactUploadProcessQueueService := &dsartifact.ArtifactUploadProcessQueueService{
			Client:          factory.NewDsartifactClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		nodeIP, _ := cmd.Flags().GetString("nodeIP")
		podName, _ := cmd.Flags().GetString("podName")
		input := &artifact_upload_process_queue.DeleteQueueParams{
			Namespace: namespace,
			NodeIP:    nodeIP,
			PodName:   podName,
		}
		errNoContent := artifactUploadProcessQueueService.DeleteQueueShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteQueueCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteQueueCmd.MarkFlagRequired("namespace")
	DeleteQueueCmd.Flags().String("nodeIP", "", "Node IP")
	_ = DeleteQueueCmd.MarkFlagRequired("nodeIP")
	DeleteQueueCmd.Flags().String("podName", "", "Pod name")
	_ = DeleteQueueCmd.MarkFlagRequired("podName")
}
