// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dslogmanager"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// downloadServerLogsCmd represents the downloadServerLogs command
var downloadServerLogsCmd = &cobra.Command{
	Use:   "downloadServerLogs",
	Short: "Download server logs",
	Long:  `Download server logs`,
	RunE: func(cmd *cobra.Command, args []string) error {
		terminatedServersService := &dslogmanager.TerminatedServersService{
			Client:          factory.NewDslogmanagerClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		podName, _ := cmd.Flags().GetString("podName")
		input := &terminated_servers.DownloadServerLogsParams{
			Namespace: namespace,
			PodName:   podName,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := terminatedServersService.DownloadServerLogs(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(downloadServerLogsCmd)
	downloadServerLogsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = downloadServerLogsCmd.MarkFlagRequired("namespace")
	downloadServerLogsCmd.Flags().StringP("podName", "p", " ", "Pod name")
	_ = downloadServerLogsCmd.MarkFlagRequired("podName")
}
