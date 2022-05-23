// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
	Use:   "removePlayerFromSession",
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
		ok, err := sessionService.RemovePlayerFromSessionShort(input)
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
	RemovePlayerFromSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = RemovePlayerFromSessionCmd.MarkFlagRequired("namespace")
	RemovePlayerFromSessionCmd.Flags().String("sessionID", "", "Session ID")
	_ = RemovePlayerFromSessionCmd.MarkFlagRequired("sessionID")
	RemovePlayerFromSessionCmd.Flags().String("userID", "", "User ID")
	_ = RemovePlayerFromSessionCmd.MarkFlagRequired("userID")
}
