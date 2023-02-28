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

// GetSessionHistoryDetailedCmd represents the GetSessionHistoryDetailed command
var GetSessionHistoryDetailedCmd = &cobra.Command{
	Use:   "getSessionHistoryDetailed",
	Short: "Get session history detailed",
	Long:  `Get session history detailed`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          factory.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		matchID, _ := cmd.Flags().GetString("matchID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &session.GetSessionHistoryDetailedParams{
			MatchID:   matchID,
			Namespace: namespace,
		}
		ok, errOK := sessionService.GetSessionHistoryDetailedShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetSessionHistoryDetailedCmd.Flags().String("matchID", "", "Match ID")
	_ = GetSessionHistoryDetailedCmd.MarkFlagRequired("matchID")
	GetSessionHistoryDetailedCmd.Flags().String("namespace", "", "Namespace")
	_ = GetSessionHistoryDetailedCmd.MarkFlagRequired("namespace")
}
