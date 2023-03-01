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

// DeleteGameSessionCmd represents the DeleteGameSession command
var DeleteGameSessionCmd = &cobra.Command{
	Use:   "deleteGameSession",
	Short: "Delete game session",
	Long:  `Delete game session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session.DeleteGameSessionParams{
			Namespace: namespace,
			SessionID: sessionId,
		}
		errNoContent := gameSessionService.DeleteGameSessionShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteGameSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteGameSessionCmd.MarkFlagRequired("namespace")
	DeleteGameSessionCmd.Flags().String("sessionId", "", "Session id")
	_ = DeleteGameSessionCmd.MarkFlagRequired("sessionId")
}
