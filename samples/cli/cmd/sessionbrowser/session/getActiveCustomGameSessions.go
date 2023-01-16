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
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		serverRegion, _ := cmd.Flags().GetString("serverRegion")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &session.GetActiveCustomGameSessionsParams{
			Namespace:    namespace,
			Limit:        &limit,
			Offset:       &offset,
			ServerRegion: &serverRegion,
			SessionID:    &sessionId,
		}
		ok, err := sessionService.GetActiveCustomGameSessionsShort(input)
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
	GetActiveCustomGameSessionsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetActiveCustomGameSessionsCmd.MarkFlagRequired("namespace")
	GetActiveCustomGameSessionsCmd.Flags().Int64("limit", 20, "Limit")
	GetActiveCustomGameSessionsCmd.Flags().Int64("offset", 0, "Offset")
	GetActiveCustomGameSessionsCmd.Flags().String("serverRegion", "", "Server region")
	GetActiveCustomGameSessionsCmd.Flags().String("sessionId", "", "Session id")
}
