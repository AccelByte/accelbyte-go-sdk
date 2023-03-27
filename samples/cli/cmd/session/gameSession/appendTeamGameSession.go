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

// AppendTeamGameSessionCmd represents the AppendTeamGameSession command
var AppendTeamGameSessionCmd = &cobra.Command{
	Use:   "appendTeamGameSession",
	Short: "Append team game session",
	Long:  `Append team game session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsAppendTeamGameSessionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session.AppendTeamGameSessionParams{
			Body:      body,
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, errOK := gameSessionService.AppendTeamGameSessionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AppendTeamGameSessionCmd.Flags().String("body", "", "Body")
	_ = AppendTeamGameSessionCmd.MarkFlagRequired("body")
	AppendTeamGameSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = AppendTeamGameSessionCmd.MarkFlagRequired("namespace")
	AppendTeamGameSessionCmd.Flags().String("sessionId", "", "Session id")
	_ = AppendTeamGameSessionCmd.MarkFlagRequired("sessionId")
}
