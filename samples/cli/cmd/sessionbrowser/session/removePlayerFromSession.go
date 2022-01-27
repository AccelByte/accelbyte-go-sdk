// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package session

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RemovePlayerFromSessionCmd represents the RemovePlayerFromSession command
var RemovePlayerFromSessionCmd = &cobra.Command{
	Use:   "RemovePlayerFromSession",
	Short: "Remove player from session",
	Long:  `Remove player from session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          factory.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionID, _ := cmd.Flags().GetString("sessionID")
		userID, _ := cmd.Flags().GetString("userID")
		input := &session.RemovePlayerFromSessionParams{
			Namespace: namespace,
			SessionID: sessionID,
			UserID:    userID,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := sessionService.RemovePlayerFromSession(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	RemovePlayerFromSessionCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = RemovePlayerFromSessionCmd.MarkFlagRequired("namespace")
	RemovePlayerFromSessionCmd.Flags().StringP("sessionID", "sD", " ", "Session ID")
	_ = RemovePlayerFromSessionCmd.MarkFlagRequired("sessionID")
	RemovePlayerFromSessionCmd.Flags().StringP("userID", "uD", " ", "User ID")
	_ = RemovePlayerFromSessionCmd.MarkFlagRequired("userID")
}
