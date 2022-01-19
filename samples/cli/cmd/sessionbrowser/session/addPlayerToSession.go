// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// addPlayerToSessionCmd represents the addPlayerToSession command
var addPlayerToSessionCmd = &cobra.Command{
	Use:   "addPlayerToSession",
	Short: "Add player to session",
	Long:  `Add player to session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          factory.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionbrowserclientmodels.ModelsAddPlayerRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionID, _ := cmd.Flags().GetString("sessionID")
		input := &session.AddPlayerToSessionParams{
			Body:      body,
			Namespace: namespace,
			SessionID: sessionID,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := sessionService.AddPlayerToSession(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(addPlayerToSessionCmd)
	addPlayerToSessionCmd.Flags().StringP("body", "b", " ", "Body")
	_ = addPlayerToSessionCmd.MarkFlagRequired("body")
	addPlayerToSessionCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = addPlayerToSessionCmd.MarkFlagRequired("namespace")
	addPlayerToSessionCmd.Flags().StringP("sessionID", "s", " ", "Session ID")
	_ = addPlayerToSessionCmd.MarkFlagRequired("sessionID")
}
