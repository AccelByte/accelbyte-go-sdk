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

// PatchUpdateGameSessionCmd represents the PatchUpdateGameSession command
var PatchUpdateGameSessionCmd = &cobra.Command{
	Use:   "patchUpdateGameSession",
	Short: "Patch update game session",
	Long:  `Patch update game session`,
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
		input := &game_session.PatchUpdateGameSessionParams{
			Body:      body,
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, err := gameSessionService.PatchUpdateGameSessionShort(input)
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
	PatchUpdateGameSessionCmd.Flags().String("body", "", "Body")
	_ = PatchUpdateGameSessionCmd.MarkFlagRequired("body")
	PatchUpdateGameSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = PatchUpdateGameSessionCmd.MarkFlagRequired("namespace")
	PatchUpdateGameSessionCmd.Flags().String("sessionId", "", "Session id")
	_ = PatchUpdateGameSessionCmd.MarkFlagRequired("sessionId")
}
