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

// AdminGetSessionCmd represents the AdminGetSession command
var AdminGetSessionCmd = &cobra.Command{
	Use:   "adminGetSession",
	Short: "Admin get session",
	Long:  `Admin get session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          factory.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionID, _ := cmd.Flags().GetString("sessionID")
		input := &session.AdminGetSessionParams{
			Namespace: namespace,
			SessionID: sessionID,
		}
		ok, errOK := sessionService.AdminGetSessionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetSessionCmd.MarkFlagRequired("namespace")
	AdminGetSessionCmd.Flags().String("sessionID", "", "Session ID")
	_ = AdminGetSessionCmd.MarkFlagRequired("sessionID")
}
