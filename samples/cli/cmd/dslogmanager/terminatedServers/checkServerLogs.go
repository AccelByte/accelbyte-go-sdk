// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package terminatedServers

import (
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dslogmanager"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CheckServerLogsCmd represents the CheckServerLogs command
var CheckServerLogsCmd = &cobra.Command{
	Use:   "CheckServerLogs",
	Short: "Check server logs",
	Long:  `Check server logs`,
	RunE: func(cmd *cobra.Command, args []string) error {
		terminatedServersService := &dslogmanager.TerminatedServersService{
			Client:          factory.NewDslogmanagerClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		podName, _ := cmd.Flags().GetString("podName")
		input := &terminated_servers.CheckServerLogsParams{
			Namespace: namespace,
			PodName:   podName,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := terminatedServersService.CheckServerLogs(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	CheckServerLogsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = CheckServerLogsCmd.MarkFlagRequired("namespace")
	CheckServerLogsCmd.Flags().StringP("podName", "pe", " ", "Pod name")
	_ = CheckServerLogsCmd.MarkFlagRequired("podName")
}
