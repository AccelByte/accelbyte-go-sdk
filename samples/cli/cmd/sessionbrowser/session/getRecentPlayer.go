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

// GetRecentPlayerCmd represents the GetRecentPlayer command
var GetRecentPlayerCmd = &cobra.Command{
	Use:   "getRecentPlayer",
	Short: "Get recent player",
	Long:  `Get recent player`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          factory.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userID, _ := cmd.Flags().GetString("userID")
		input := &session.GetRecentPlayerParams{
			Namespace: namespace,
			UserID:    userID,
		}
		ok, errOK := sessionService.GetRecentPlayerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetRecentPlayerCmd.Flags().String("namespace", "", "Namespace")
	_ = GetRecentPlayerCmd.MarkFlagRequired("namespace")
	GetRecentPlayerCmd.Flags().String("userID", "", "User ID")
	_ = GetRecentPlayerCmd.MarkFlagRequired("userID")
}
