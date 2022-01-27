// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package session

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// querySessionCmd represents the querySession command
var querySessionCmd = &cobra.Command{
	Use:   "querySession",
	Short: "Query session",
	Long:  `Query session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          factory.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionType, _ := cmd.Flags().GetString("sessionType")
		gameMode, _ := cmd.Flags().GetString("gameMode")
		gameVersion, _ := cmd.Flags().GetString("gameVersion")
		joinable, _ := cmd.Flags().GetString("joinable")
		limit, _ := cmd.Flags().GetString("limit")
		matchExist, _ := cmd.Flags().GetString("matchExist")
		matchId, _ := cmd.Flags().GetString("matchId")
		offset, _ := cmd.Flags().GetString("offset")
		serverStatus, _ := cmd.Flags().GetString("serverStatus")
		userId, _ := cmd.Flags().GetString("userId")
		input := &session.QuerySessionParams{
			Namespace:    namespace,
			GameMode:     &gameMode,
			GameVersion:  &gameVersion,
			Joinable:     &joinable,
			Limit:        &limit,
			MatchExist:   &matchExist,
			MatchID:      &matchId,
			Offset:       &offset,
			ServerStatus: &serverStatus,
			UserID:       &userId,
			SessionType:  sessionType,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := sessionService.QuerySession(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(querySessionCmd)
	querySessionCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = querySessionCmd.MarkFlagRequired("namespace")
	querySessionCmd.Flags().StringP("game_mode", "ge", " ", "Game mode")
	querySessionCmd.Flags().StringP("game_version", "gn", " ", "Game version")
	querySessionCmd.Flags().StringP("joinable", "je", " ", "Joinable")
	querySessionCmd.Flags().StringP("limit", "lt", "20", "Limit")
	querySessionCmd.Flags().StringP("match_exist", "mt", " ", "Match exist")
	querySessionCmd.Flags().StringP("match_id", "md", " ", "Match id")
	querySessionCmd.Flags().StringP("offset", "ot", "0", "Offset")
	querySessionCmd.Flags().StringP("server_status", "ss", " ", "Server status")
	querySessionCmd.Flags().StringP("user_id", "ud", " ", "User id")
	querySessionCmd.Flags().StringP("session_type", "se", " ", "Session type")
	_ = querySessionCmd.MarkFlagRequired("session_type")
}
