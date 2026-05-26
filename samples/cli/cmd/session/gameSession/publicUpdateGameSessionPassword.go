// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gameSession

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/game_session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicUpdateGameSessionPasswordCmd represents the PublicUpdateGameSessionPassword command
var PublicUpdateGameSessionPasswordCmd = &cobra.Command{
	Use:   "publicUpdateGameSessionPassword",
	Short: "Public update game session password",
	Long:  `Public update game session password`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsUpdatePasswordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session.PublicUpdateGameSessionPasswordParams{
			Body:      body,
			Namespace: namespace,
			SessionID: sessionId,
		}
		errNoContent := gameSessionService.PublicUpdateGameSessionPasswordShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicUpdateGameSessionPasswordCmd.Flags().String("body", "", "Body")
	_ = PublicUpdateGameSessionPasswordCmd.MarkFlagRequired("body")
	PublicUpdateGameSessionPasswordCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdateGameSessionPasswordCmd.MarkFlagRequired("namespace")
	PublicUpdateGameSessionPasswordCmd.Flags().String("sessionId", "", "Session id")
	_ = PublicUpdateGameSessionPasswordCmd.MarkFlagRequired("sessionId")
}
