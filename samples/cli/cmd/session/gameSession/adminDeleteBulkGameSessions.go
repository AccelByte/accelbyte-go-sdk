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

// AdminDeleteBulkGameSessionsCmd represents the AdminDeleteBulkGameSessions command
var AdminDeleteBulkGameSessionsCmd = &cobra.Command{
	Use:   "adminDeleteBulkGameSessions",
	Short: "Admin delete bulk game sessions",
	Long:  `Admin delete bulk game sessions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsDeleteBulkGameSessionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &game_session.AdminDeleteBulkGameSessionsParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := gameSessionService.AdminDeleteBulkGameSessionsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminDeleteBulkGameSessionsCmd.Flags().String("body", "", "Body")
	_ = AdminDeleteBulkGameSessionsCmd.MarkFlagRequired("body")
	AdminDeleteBulkGameSessionsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteBulkGameSessionsCmd.MarkFlagRequired("namespace")
}
