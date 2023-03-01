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

// AdminQuerySessionCmd represents the AdminQuerySession command
var AdminQuerySessionCmd = &cobra.Command{
	Use:   "adminQuerySession",
	Short: "Admin query session",
	Long:  `Admin query session`,
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
		input := &session.AdminQuerySessionParams{
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
		ok, errOK := sessionService.AdminQuerySessionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminQuerySessionCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminQuerySessionCmd.MarkFlagRequired("namespace")
	AdminQuerySessionCmd.Flags().String("gameMode", "", "Game mode")
	AdminQuerySessionCmd.Flags().String("gameVersion", "", "Game version")
	AdminQuerySessionCmd.Flags().String("joinable", "", "Joinable")
	AdminQuerySessionCmd.Flags().Int64("limit", 20, "Limit")
	AdminQuerySessionCmd.Flags().String("matchExist", "", "Match exist")
	AdminQuerySessionCmd.Flags().String("matchId", "", "Match id")
	AdminQuerySessionCmd.Flags().Int64("offset", 0, "Offset")
	AdminQuerySessionCmd.Flags().String("serverStatus", "", "Server status")
	AdminQuerySessionCmd.Flags().String("userId", "", "User id")
	AdminQuerySessionCmd.Flags().String("sessionType", "", "Session type")
	_ = AdminQuerySessionCmd.MarkFlagRequired("session_type")
}
