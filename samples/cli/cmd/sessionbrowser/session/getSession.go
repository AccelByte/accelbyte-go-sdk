// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package session

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getSessionCmd represents the getSession command
var getSessionCmd = &cobra.Command{
	Use:   "getSession",
	Short: "Get session",
	Long:  `Get session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          factory.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionID, _ := cmd.Flags().GetString("sessionID")
		input := &session.GetSessionParams{
			Namespace: namespace,
			SessionID: sessionID,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := sessionService.GetSession(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getSessionCmd)
	getSessionCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getSessionCmd.MarkFlagRequired("namespace")
	getSessionCmd.Flags().StringP("sessionID", "sD", " ", "Session ID")
	_ = getSessionCmd.MarkFlagRequired("sessionID")
}
