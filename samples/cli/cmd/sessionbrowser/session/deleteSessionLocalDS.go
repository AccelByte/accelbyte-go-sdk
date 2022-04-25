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

// DeleteSessionLocalDSCmd represents the DeleteSessionLocalDS command
var DeleteSessionLocalDSCmd = &cobra.Command{
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
		ok, err := sessionService.DeleteSessionLocalDSShort(input, nil)
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
	DeleteSessionLocalDSCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteSessionLocalDSCmd.MarkFlagRequired("namespace")
	DeleteSessionLocalDSCmd.Flags().StringP("sessionID", "", "", "Session ID")
	_ = DeleteSessionLocalDSCmd.MarkFlagRequired("sessionID")
}
