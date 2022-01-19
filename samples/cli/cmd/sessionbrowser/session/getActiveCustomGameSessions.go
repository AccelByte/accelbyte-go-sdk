// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getActiveCustomGameSessionsCmd represents the getActiveCustomGameSessions command
var getActiveCustomGameSessionsCmd = &cobra.Command{
	Use:   "getActiveCustomGameSessions",
	Short: "Get active custom game sessions",
	Long:  `Get active custom game sessions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          factory.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		serverRegion, _ := cmd.Flags().GetString("serverRegion")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &session.GetActiveCustomGameSessionsParams{
			Namespace:    namespace,
			ServerRegion: &serverRegion,
			SessionID:    &sessionId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := sessionService.GetActiveCustomGameSessions(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getActiveCustomGameSessionsCmd)
	getActiveCustomGameSessionsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getActiveCustomGameSessionsCmd.MarkFlagRequired("namespace")
	getActiveCustomGameSessionsCmd.Flags().StringP("server_region", "s", " ", "Server region")
	getActiveCustomGameSessionsCmd.Flags().StringP("session_id", "s", " ", "Session id")
}
