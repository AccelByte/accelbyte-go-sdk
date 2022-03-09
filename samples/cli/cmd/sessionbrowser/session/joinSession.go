// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package session

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// JoinSessionCmd represents the JoinSession command
var JoinSessionCmd = &cobra.Command{
	Use:   "joinSession",
	Short: "Join session",
	Long:  `Join session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          factory.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionbrowserclientmodels.ModelsJoinGameSessionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionID, _ := cmd.Flags().GetString("sessionID")
		input := &session.JoinSessionParams{
			Body:      body,
			Namespace: namespace,
			SessionID: sessionID,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := sessionService.JoinSession(input)
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
	JoinSessionCmd.Flags().StringP("body", "", "", "Body")
	_ = JoinSessionCmd.MarkFlagRequired("body")
	JoinSessionCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = JoinSessionCmd.MarkFlagRequired("namespace")
	JoinSessionCmd.Flags().StringP("sessionID", "", "", "Session ID")
	_ = JoinSessionCmd.MarkFlagRequired("sessionID")
}
