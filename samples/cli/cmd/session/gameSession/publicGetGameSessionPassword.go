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

// PublicGetGameSessionPasswordCmd represents the PublicGetGameSessionPassword command
var PublicGetGameSessionPasswordCmd = &cobra.Command{
	Use:   "publicGetGameSessionPassword",
	Short: "Public get game session password",
	Long:  `Public get game session password`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session.PublicGetGameSessionPasswordParams{
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, errOK := gameSessionService.PublicGetGameSessionPasswordShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetGameSessionPasswordCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetGameSessionPasswordCmd.MarkFlagRequired("namespace")
	PublicGetGameSessionPasswordCmd.Flags().String("sessionId", "", "Session id")
	_ = PublicGetGameSessionPasswordCmd.MarkFlagRequired("sessionId")
}
