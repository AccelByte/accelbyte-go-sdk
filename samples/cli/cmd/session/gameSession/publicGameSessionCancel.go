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

// PublicGameSessionCancelCmd represents the PublicGameSessionCancel command
var PublicGameSessionCancelCmd = &cobra.Command{
	Use:   "publicGameSessionCancel",
	Short: "Public game session cancel",
	Long:  `Public game session cancel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &game_session.PublicGameSessionCancelParams{
			Namespace: namespace,
			SessionID: sessionId,
			UserID:    userId,
		}
		errNoContent := gameSessionService.PublicGameSessionCancelShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicGameSessionCancelCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGameSessionCancelCmd.MarkFlagRequired("namespace")
	PublicGameSessionCancelCmd.Flags().String("sessionId", "", "Session id")
	_ = PublicGameSessionCancelCmd.MarkFlagRequired("sessionId")
	PublicGameSessionCancelCmd.Flags().String("userId", "", "User id")
	_ = PublicGameSessionCancelCmd.MarkFlagRequired("userId")
}
