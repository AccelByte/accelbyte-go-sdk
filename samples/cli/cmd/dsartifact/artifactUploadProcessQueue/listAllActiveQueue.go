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

// ListAllActiveQueueCmd represents the ListAllActiveQueue command
var ListAllActiveQueueCmd = &cobra.Command{
	Use:   "listAllActiveQueue",
	Short: "List all active queue",
	Long:  `List all active queue`,
	RunE: func(cmd *cobra.Command, args []string) error {
		artifactUploadProcessQueueService := &dsartifact.ArtifactUploadProcessQueueService{
			Client:          factory.NewDsartifactClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		next_, _ := cmd.Flags().GetString("next")
		nodeIP, _ := cmd.Flags().GetString("nodeIP")
		podName, _ := cmd.Flags().GetString("podName")
		previous, _ := cmd.Flags().GetString("previous")
		input := &artifact_upload_process_queue.ListAllActiveQueueParams{
			Namespace: namespace,
			Limit:     &limit,
			Next:      &next_,
			NodeIP:    &nodeIP,
			PodName:   &podName,
			Previous:  &previous,
		}
		ok, errOK := artifactUploadProcessQueueService.ListAllActiveQueueShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListAllActiveQueueCmd.Flags().String("namespace", "", "Namespace")
	_ = ListAllActiveQueueCmd.MarkFlagRequired("namespace")
	ListAllActiveQueueCmd.Flags().Int64("limit", 20, "Limit")
	ListAllActiveQueueCmd.Flags().String("next", "", "Next")
	ListAllActiveQueueCmd.Flags().String("nodeIP", "", "Node IP")
	ListAllActiveQueueCmd.Flags().String("podName", "", "Pod name")
	ListAllActiveQueueCmd.Flags().String("previous", "", "Previous")
}
