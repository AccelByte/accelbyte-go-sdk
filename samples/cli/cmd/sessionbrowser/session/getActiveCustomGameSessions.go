// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetActiveCustomGameSessionsCmd represents the GetActiveCustomGameSessions command
var GetActiveCustomGameSessionsCmd = &cobra.Command{
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
		ok, err := sessionService.GetActiveCustomGameSessionsShort(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetActiveCustomGameSessionsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetActiveCustomGameSessionsCmd.MarkFlagRequired("namespace")
	GetActiveCustomGameSessionsCmd.Flags().StringP("serverRegion", "", "", "Server region")
	GetActiveCustomGameSessionsCmd.Flags().StringP("sessionId", "", "", "Session id")
}
