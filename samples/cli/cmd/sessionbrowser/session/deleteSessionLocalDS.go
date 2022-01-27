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

// deleteSessionLocalDSCmd represents the deleteSessionLocalDS command
var deleteSessionLocalDSCmd = &cobra.Command{
	Use:   "deleteSessionLocalDS",
	Short: "Delete session local DS",
	Long:  `Delete session local DS`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          factory.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionID, _ := cmd.Flags().GetString("sessionID")
		input := &session.DeleteSessionLocalDSParams{
			Namespace: namespace,
			SessionID: sessionID,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := sessionService.DeleteSessionLocalDS(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteSessionLocalDSCmd)
	deleteSessionLocalDSCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = deleteSessionLocalDSCmd.MarkFlagRequired("namespace")
	deleteSessionLocalDSCmd.Flags().StringP("sessionID", "sD", " ", "Session ID")
	_ = deleteSessionLocalDSCmd.MarkFlagRequired("sessionID")
}
