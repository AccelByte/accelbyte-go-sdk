// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package terminatedServers

import (
	"bytes"
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dslogmanager"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DownloadServerLogsCmd represents the DownloadServerLogs command
var DownloadServerLogsCmd = &cobra.Command{
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
		file, errFile := os.Create("file")
		logrus.Infof("Output %v", file)
		if errFile != nil {
			return errFile
		}
		writer := bytes.NewBuffer(nil)
		input := &terminated_servers.DownloadServerLogsParams{
			Namespace: namespace,
			PodName:   podName,
		}
		ok, errOK := terminatedServersService.DownloadServerLogsShort(input, writer)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DownloadServerLogsCmd.Flags().String("namespace", "", "Namespace")
	_ = DownloadServerLogsCmd.MarkFlagRequired("namespace")
	DownloadServerLogsCmd.Flags().String("podName", "", "Pod name")
	_ = DownloadServerLogsCmd.MarkFlagRequired("podName")
}
