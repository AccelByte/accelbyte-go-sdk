// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gameSession

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/game_session"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminQueryGameSessionsCmd represents the AdminQueryGameSessions command
var AdminQueryGameSessionsCmd = &cobra.Command{
	Use:   "adminQueryGameSessions",
	Short: "Admin query game sessions",
	Long:  `Admin query game sessions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		configurationName, _ := cmd.Flags().GetString("configurationName")
		dsPodName, _ := cmd.Flags().GetString("dsPodName")
		fromTime, _ := cmd.Flags().GetString("fromTime")
		gameMode, _ := cmd.Flags().GetString("gameMode")
		joinability, _ := cmd.Flags().GetString("joinability")
		limit, _ := cmd.Flags().GetInt64("limit")
		matchPool, _ := cmd.Flags().GetString("matchPool")
		memberID, _ := cmd.Flags().GetString("memberID")
		offset, _ := cmd.Flags().GetInt64("offset")
		order, _ := cmd.Flags().GetString("order")
		orderBy, _ := cmd.Flags().GetString("orderBy")
		sessionID, _ := cmd.Flags().GetString("sessionID")
		status, _ := cmd.Flags().GetString("status")
		statusV2, _ := cmd.Flags().GetString("statusV2")
		toTime, _ := cmd.Flags().GetString("toTime")
		input := &game_session.AdminQueryGameSessionsParams{
			Namespace:         namespace,
			ConfigurationName: &configurationName,
			DsPodName:         &dsPodName,
			FromTime:          &fromTime,
			GameMode:          &gameMode,
			Joinability:       &joinability,
			Limit:             &limit,
			MatchPool:         &matchPool,
			MemberID:          &memberID,
			Offset:            &offset,
			Order:             &order,
			OrderBy:           &orderBy,
			SessionID:         &sessionID,
			Status:            &status,
			StatusV2:          &statusV2,
			ToTime:            &toTime,
		}
		ok, err := gameSessionService.AdminQueryGameSessionsShort(input)
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
	AdminQueryGameSessionsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminQueryGameSessionsCmd.MarkFlagRequired("namespace")
	AdminQueryGameSessionsCmd.Flags().String("configurationName", "", "Configuration name")
	AdminQueryGameSessionsCmd.Flags().String("dsPodName", "", "Ds pod name")
	AdminQueryGameSessionsCmd.Flags().String("fromTime", "", "From time")
	AdminQueryGameSessionsCmd.Flags().String("gameMode", "", "Game mode")
	AdminQueryGameSessionsCmd.Flags().String("joinability", "", "Joinability")
	AdminQueryGameSessionsCmd.Flags().Int64("limit", 20, "Limit")
	AdminQueryGameSessionsCmd.Flags().String("matchPool", "", "Match pool")
	AdminQueryGameSessionsCmd.Flags().String("memberID", "", "Member ID")
	AdminQueryGameSessionsCmd.Flags().Int64("offset", 0, "Offset")
	AdminQueryGameSessionsCmd.Flags().String("order", "", "Order")
	AdminQueryGameSessionsCmd.Flags().String("orderBy", "", "Order by")
	AdminQueryGameSessionsCmd.Flags().String("sessionID", "", "Session ID")
	AdminQueryGameSessionsCmd.Flags().String("status", "", "Status")
	AdminQueryGameSessionsCmd.Flags().String("statusV2", "", "Status V2")
	AdminQueryGameSessionsCmd.Flags().String("toTime", "", "To time")
}
