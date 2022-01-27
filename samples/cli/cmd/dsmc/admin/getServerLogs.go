// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package admin

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getServerLogsCmd represents the getServerLogs command
var getServerLogsCmd = &cobra.Command{
	Use:   "getServerLogs",
	Short: "Get server logs",
	Long:  `Get server logs`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &dsmc.AdminService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		podName, _ := cmd.Flags().GetString("podName")
		input := &admin.GetServerLogsParams{
			Namespace: namespace,
			PodName:   podName,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminService.GetServerLogs(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getServerLogsCmd)
	getServerLogsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getServerLogsCmd.MarkFlagRequired("namespace")
	getServerLogsCmd.Flags().StringP("podName", "pe", " ", "Pod name")
	_ = getServerLogsCmd.MarkFlagRequired("podName")
}
