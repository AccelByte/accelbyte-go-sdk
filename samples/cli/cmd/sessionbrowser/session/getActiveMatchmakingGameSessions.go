// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package session

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetActiveMatchmakingGameSessionsCmd represents the GetActiveMatchmakingGameSessions command
var GetActiveMatchmakingGameSessionsCmd = &cobra.Command{
	Use:   "getActiveMatchmakingGameSessions",
	Short: "Get active matchmaking game sessions",
	Long:  `Get active matchmaking game sessions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          factory.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		matchId, _ := cmd.Flags().GetString("matchId")
		serverRegion, _ := cmd.Flags().GetString("serverRegion")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &session.GetActiveMatchmakingGameSessionsParams{
			Namespace:    namespace,
			MatchID:      &matchId,
			ServerRegion: &serverRegion,
			SessionID:    &sessionId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := sessionService.GetActiveMatchmakingGameSessions(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	GetActiveMatchmakingGameSessionsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetActiveMatchmakingGameSessionsCmd.MarkFlagRequired("namespace")
	GetActiveMatchmakingGameSessionsCmd.Flags().StringP("matchId", "", "", "Match id")
	GetActiveMatchmakingGameSessionsCmd.Flags().StringP("serverRegion", "", "", "Server region")
	GetActiveMatchmakingGameSessionsCmd.Flags().StringP("sessionId", "", "", "Session id")
}
