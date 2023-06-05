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

// GameSessionGenerateCodeCmd represents the GameSessionGenerateCode command
var GameSessionGenerateCodeCmd = &cobra.Command{
	Use:   "gameSessionGenerateCode",
	Short: "Game session generate code",
	Long:  `Game session generate code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session.GameSessionGenerateCodeParams{
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, errOK := gameSessionService.GameSessionGenerateCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GameSessionGenerateCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = GameSessionGenerateCodeCmd.MarkFlagRequired("namespace")
	GameSessionGenerateCodeCmd.Flags().String("sessionId", "", "Session id")
	_ = GameSessionGenerateCodeCmd.MarkFlagRequired("sessionId")
}
