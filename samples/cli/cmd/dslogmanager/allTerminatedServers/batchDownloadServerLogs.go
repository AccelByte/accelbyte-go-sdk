// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/all_terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dslogmanager"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// batchDownloadServerLogsCmd represents the batchDownloadServerLogs command
var batchDownloadServerLogsCmd = &cobra.Command{
	Use:   "batchDownloadServerLogs",
	Short: "Batch download server logs",
	Long:  `Batch download server logs`,
	RunE: func(cmd *cobra.Command, args []string) error {
		allTerminatedServersService := &dslogmanager.AllTerminatedServersService{
			Client:          factory.NewDslogmanagerClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dslogmanagerclientmodels.ModelsBatchDownloadLogsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &all_terminated_servers.BatchDownloadServerLogsParams{
			Body: body,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := allTerminatedServersService.BatchDownloadServerLogs(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(batchDownloadServerLogsCmd)
	batchDownloadServerLogsCmd.Flags().StringP("body", "b", " ", "Body")
	_ = batchDownloadServerLogsCmd.MarkFlagRequired("body")
}
