// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dslogmanager"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetServerLogsCmd represents the GetServerLogs command
var GetServerLogsCmd = &cobra.Command{
	Use:   "getServerLogs",
	Short: "Get server logs",
	Long:  `Get server logs`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &dslogmanager.AdminService{
			Client:          factory.NewDslogmanagerClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		podName, _ := cmd.Flags().GetString("podName")
		logType, _ := cmd.Flags().GetString("logType")
		offset, _ := cmd.Flags().GetInt64("offset")
		origin, _ := cmd.Flags().GetString("origin")
		input := &admin.GetServerLogsParams{
			Namespace: namespace,
			PodName:   podName,
			LogType:   &logType,
			Offset:    &offset,
			Origin:    &origin,
		}
		ok, errOK := adminService.GetServerLogsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetServerLogsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetServerLogsCmd.MarkFlagRequired("namespace")
	GetServerLogsCmd.Flags().String("podName", "", "Pod name")
	_ = GetServerLogsCmd.MarkFlagRequired("podName")
	GetServerLogsCmd.Flags().String("logType", "", "Log type")
	GetServerLogsCmd.Flags().Int64("offset", 0, "Offset")
	GetServerLogsCmd.Flags().String("origin", "", "Origin")
}
