// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package session

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QuerySessionCmd represents the QuerySession command
var QuerySessionCmd = &cobra.Command{
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
		limit, _ := cmd.Flags().GetInt64("limit")
		matchExist, _ := cmd.Flags().GetString("matchExist")
		matchId, _ := cmd.Flags().GetString("matchId")
		offset, _ := cmd.Flags().GetInt64("offset")
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
		ok, err := sessionService.QuerySessionShort(input)
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
	QuerySessionCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = QuerySessionCmd.MarkFlagRequired("namespace")
	QuerySessionCmd.Flags().StringP("gameMode", "", "", "Game mode")
	QuerySessionCmd.Flags().StringP("gameVersion", "", "", "Game version")
	QuerySessionCmd.Flags().StringP("joinable", "", "", "Joinable")
	QuerySessionCmd.Flags().Int64P("limit", "", 20, "Limit")
	QuerySessionCmd.Flags().StringP("matchExist", "", "", "Match exist")
	QuerySessionCmd.Flags().StringP("matchId", "", "", "Match id")
	QuerySessionCmd.Flags().Int64P("offset", "", 0, "Offset")
	QuerySessionCmd.Flags().StringP("serverStatus", "", "", "Server status")
	QuerySessionCmd.Flags().StringP("userId", "", "", "User id")
	QuerySessionCmd.Flags().StringP("sessionType", "", "", "Session type")
	_ = QuerySessionCmd.MarkFlagRequired("session_type")
}
