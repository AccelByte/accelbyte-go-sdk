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

// UpdateGameSessionCmd represents the UpdateGameSession command
var UpdateGameSessionCmd = &cobra.Command{
	Use:   "updateGameSession",
	Short: "Update game session",
	Long:  `Update game session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsUpdateGameSessionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session.UpdateGameSessionParams{
			Body:      body,
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, err := gameSessionService.UpdateGameSessionShort(input)
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
	UpdateGameSessionCmd.Flags().String("body", "", "Body")
	_ = UpdateGameSessionCmd.MarkFlagRequired("body")
	UpdateGameSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateGameSessionCmd.MarkFlagRequired("namespace")
	UpdateGameSessionCmd.Flags().String("sessionId", "", "Session id")
	_ = UpdateGameSessionCmd.MarkFlagRequired("sessionId")
}
