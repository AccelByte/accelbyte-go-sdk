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

// ListAllQueueCmd represents the ListAllQueue command
var ListAllQueueCmd = &cobra.Command{
	Use:   "listAllQueue",
	Short: "List all queue",
	Long:  `List all queue`,
	RunE: func(cmd *cobra.Command, args []string) error {
		artifactUploadProcessQueueService := &dsartifact.ArtifactUploadProcessQueueService{
			Client:          factory.NewDsartifactClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		excludeUploading, _ := cmd.Flags().GetBool("excludeUploading")
		limit, _ := cmd.Flags().GetInt64("limit")
		next_, _ := cmd.Flags().GetString("next")
		nodeIP, _ := cmd.Flags().GetString("nodeIP")
		order, _ := cmd.Flags().GetString("order")
		podName, _ := cmd.Flags().GetString("podName")
		previous, _ := cmd.Flags().GetString("previous")
		input := &artifact_upload_process_queue.ListAllQueueParams{
			Namespace:        namespace,
			ExcludeUploading: &excludeUploading,
			Limit:            &limit,
			Next:             &next_,
			NodeIP:           &nodeIP,
			Order:            &order,
			PodName:          &podName,
			Previous:         &previous,
		}
		ok, errOK := artifactUploadProcessQueueService.ListAllQueueShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListAllQueueCmd.Flags().String("namespace", "", "Namespace")
	_ = ListAllQueueCmd.MarkFlagRequired("namespace")
	ListAllQueueCmd.Flags().Bool("excludeUploading", false, "Exclude uploading")
	ListAllQueueCmd.Flags().Int64("limit", 20, "Limit")
	ListAllQueueCmd.Flags().String("next", "", "Next")
	ListAllQueueCmd.Flags().String("nodeIP", "", "Node IP")
	ListAllQueueCmd.Flags().String("order", "", "Order")
	ListAllQueueCmd.Flags().String("podName", "", "Pod name")
	ListAllQueueCmd.Flags().String("previous", "", "Previous")
}
