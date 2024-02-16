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

// ListQueueCmd represents the ListQueue command
var ListQueueCmd = &cobra.Command{
	Use:   "listQueue",
	Short: "List queue",
	Long:  `List queue`,
	RunE: func(cmd *cobra.Command, args []string) error {
		artifactUploadProcessQueueService := &dsartifact.ArtifactUploadProcessQueueService{
			Client:          factory.NewDsartifactClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		nodeIP, _ := cmd.Flags().GetString("nodeIP")
		limit, _ := cmd.Flags().GetInt64("limit")
		next_, _ := cmd.Flags().GetString("next")
		previous, _ := cmd.Flags().GetString("previous")
		input := &artifact_upload_process_queue.ListQueueParams{
			Limit:    &limit,
			Next:     &next_,
			Previous: &previous,
			NodeIP:   nodeIP,
		}
		ok, errOK := artifactUploadProcessQueueService.ListQueueShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListQueueCmd.Flags().Int64("limit", 20, "Limit")
	ListQueueCmd.Flags().String("next", "", "Next")
	ListQueueCmd.Flags().String("previous", "", "Previous")
	ListQueueCmd.Flags().String("nodeIP", "", "Node IP")
	_ = ListQueueCmd.MarkFlagRequired("nodeIP")
}
