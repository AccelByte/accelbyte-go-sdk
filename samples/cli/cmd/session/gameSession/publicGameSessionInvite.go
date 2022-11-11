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

// PublicGameSessionInviteCmd represents the PublicGameSessionInvite command
var PublicGameSessionInviteCmd = &cobra.Command{
	Use:   "publicGameSessionInvite",
	Short: "Public game session invite",
	Long:  `Public game session invite`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsSessionInviteRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session.PublicGameSessionInviteParams{
			Body:      body,
			Namespace: namespace,
			SessionID: sessionId,
		}
		errInput := gameSessionService.PublicGameSessionInviteShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicGameSessionInviteCmd.Flags().String("body", "", "Body")
	_ = PublicGameSessionInviteCmd.MarkFlagRequired("body")
	PublicGameSessionInviteCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGameSessionInviteCmd.MarkFlagRequired("namespace")
	PublicGameSessionInviteCmd.Flags().String("sessionId", "", "Session id")
	_ = PublicGameSessionInviteCmd.MarkFlagRequired("sessionId")
}
