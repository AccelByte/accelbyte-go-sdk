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

// UserQuerySessionCmd represents the UserQuerySession command
var UserQuerySessionCmd = &cobra.Command{
	Use:   "userQuerySession",
	Short: "User query session",
	Long:  `User query session`,
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
		input := &session.UserQuerySessionParams{
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
		ok, errOK := sessionService.UserQuerySessionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UserQuerySessionCmd.Flags().String("namespace", "", "Namespace")
	_ = UserQuerySessionCmd.MarkFlagRequired("namespace")
	UserQuerySessionCmd.Flags().String("gameMode", "", "Game mode")
	UserQuerySessionCmd.Flags().String("gameVersion", "", "Game version")
	UserQuerySessionCmd.Flags().String("joinable", "", "Joinable")
	UserQuerySessionCmd.Flags().Int64("limit", 20, "Limit")
	UserQuerySessionCmd.Flags().String("matchExist", "", "Match exist")
	UserQuerySessionCmd.Flags().String("matchId", "", "Match id")
	UserQuerySessionCmd.Flags().Int64("offset", 0, "Offset")
	UserQuerySessionCmd.Flags().String("serverStatus", "", "Server status")
	UserQuerySessionCmd.Flags().String("userId", "", "User id")
	UserQuerySessionCmd.Flags().String("sessionType", "", "Session type")
	_ = UserQuerySessionCmd.MarkFlagRequired("session_type")
}
