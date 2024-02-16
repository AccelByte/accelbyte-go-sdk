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

// ListNodesIPAddressCmd represents the ListNodesIPAddress command
var ListNodesIPAddressCmd = &cobra.Command{
	Use:   "listNodesIPAddress",
	Short: "List nodes IP address",
	Long:  `List nodes IP address`,
	RunE: func(cmd *cobra.Command, args []string) error {
		artifactUploadProcessQueueService := &dsartifact.ArtifactUploadProcessQueueService{
			Client:          factory.NewDsartifactClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		limit, _ := cmd.Flags().GetInt64("limit")
		next_, _ := cmd.Flags().GetString("next")
		nodeIP, _ := cmd.Flags().GetString("nodeIP")
		previous, _ := cmd.Flags().GetString("previous")
		input := &artifact_upload_process_queue.ListNodesIPAddressParams{
			Limit:    &limit,
			Next:     &next_,
			NodeIP:   &nodeIP,
			Previous: &previous,
		}
		ok, errOK := artifactUploadProcessQueueService.ListNodesIPAddressShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListNodesIPAddressCmd.Flags().Int64("limit", 20, "Limit")
	ListNodesIPAddressCmd.Flags().String("next", "", "Next")
	ListNodesIPAddressCmd.Flags().String("nodeIP", "", "Node IP")
	ListNodesIPAddressCmd.Flags().String("previous", "", "Previous")
}
