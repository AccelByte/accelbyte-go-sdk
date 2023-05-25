// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package servers

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/servers"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ServerHistoryCmd represents the ServerHistory command
var ServerHistoryCmd = &cobra.Command{
	Use:   "serverHistory",
	Short: "Server history",
	Long:  `Server history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		serversService := &ams.ServersService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		serverID, _ := cmd.Flags().GetString("serverID")
		input := &servers.ServerHistoryParams{
			Namespace: namespace,
			ServerID:  serverID,
		}
		ok, errOK := serversService.ServerHistoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ServerHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = ServerHistoryCmd.MarkFlagRequired("namespace")
	ServerHistoryCmd.Flags().String("serverID", "", "Server ID")
	_ = ServerHistoryCmd.MarkFlagRequired("serverID")
}
