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
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminQueryGameSessionsByAttributesCmd represents the AdminQueryGameSessionsByAttributes command
var AdminQueryGameSessionsByAttributesCmd = &cobra.Command{
	Use:   "adminQueryGameSessionsByAttributes",
	Short: "Admin query game sessions by attributes",
	Long:  `Admin query game sessions by attributes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body map[string]interface{}
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &game_session.AdminQueryGameSessionsByAttributesParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := gameSessionService.AdminQueryGameSessionsByAttributesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminQueryGameSessionsByAttributesCmd.Flags().String("body", "", "Body")
	_ = AdminQueryGameSessionsByAttributesCmd.MarkFlagRequired("body")
	AdminQueryGameSessionsByAttributesCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminQueryGameSessionsByAttributesCmd.MarkFlagRequired("namespace")
}
